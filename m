Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB37B6F0520
	for <lists+devicetree@lfdr.de>; Thu, 27 Apr 2023 13:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243768AbjD0LrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Apr 2023 07:47:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243201AbjD0LrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Apr 2023 07:47:15 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C05659E7
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 04:47:13 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f19afc4f60so38994915e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 04:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682596031; x=1685188031;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HlpPvzn5kCu5+ixnMWOKTzXcqfj1ddTFaeoVC+uamZg=;
        b=EsVd2ApUhxayKpNl917bGCPAFGAAKMk/qPYyVz+DwW8A4Usnz/Z3n34hPd2rYpht1w
         aMlukfoSI4ncwz/7ZP98Go3B4CU2aL9H8TTae6XJBWboJ2U7CBi55ZLqibezwcIWXIP1
         MA+ZUypJtJGDhCeRAAxCCNOfF5rJ55lzWrYmDya4awxfuKVJCq69sGEqlZ5SZE6aEitH
         zcAiycihsUBNZ3KZX7UTQqGsEhAWinPdU/1NRyhdQt/xg2GF//07ToUmPTlWmdopovtQ
         nj7nIUylBYVT4tYaWq6XWnzsGL7o8rDNuS9Rv+yq4kDRdoBcamC+J2k+XUrvG8miu+d1
         eIxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682596031; x=1685188031;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HlpPvzn5kCu5+ixnMWOKTzXcqfj1ddTFaeoVC+uamZg=;
        b=DumbvkEr3Ja/OlmCx3zUq7WxkYCxNS2rGpELQe0kw6iUmP3ZJz9rJocCtc86CsPivl
         sTlNubXJpieUNLbR8dCLFLIf351QlJ63In9Tk4n+UtePTu4mH+poauOlLunx41j+/D0H
         eYomnxvuhnFUdXzyQYQJHRL8vSCFwhnok/MTeCcAOqFjwN0rwAkI4bhuBRya7SwpB1ys
         4gFHmHRIGpTykcMeBmCFBRZQV/zWZhP5QcceBoEJvhsnzB3Kku+j2p/hXcnC0PbIUTM1
         96GjJMEkDjmpug7ZRb0YkdX3ZgKxJnfA0hq0jIMXeRLC7usZVZxhAv0nvu0pyzSffxvd
         0uXA==
X-Gm-Message-State: AC+VfDzNV3vnAwYEfOqg/oN3pSsdakr0UEaxBybYX3tLqw8fgXTOhIuz
        YKW251NRG1QyenUDVhRJN+MOdw==
X-Google-Smtp-Source: ACHHUZ49NtB6i5XgGjOXOYLFVCzdTueqFodswUYGE7piF8vGxo+fYk600mHand4r7AFobTig13eY9g==
X-Received: by 2002:a1c:f203:0:b0:3f1:72dc:8bae with SMTP id s3-20020a1cf203000000b003f172dc8baemr1229500wmc.21.1682596031515;
        Thu, 27 Apr 2023 04:47:11 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id u7-20020a5d5147000000b002cde25fba30sm18495829wrt.1.2023.04.27.04.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 04:47:10 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     dri-devel@lists.freedesktop.org,
        Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, megous@megous.com, kernel@puri.sm,
        agx@sigxcpu.org, Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20230426143213.4178586-1-macroalpha82@gmail.com>
References: <20230426143213.4178586-1-macroalpha82@gmail.com>
Subject: Re: [PATCH V3 0/3] drm/panel: Add Anbernic RG353V-V2 Panel
Message-Id: <168259603028.3049941.9313160410502762105.b4-ty@linaro.org>
Date:   Thu, 27 Apr 2023 13:47:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 26 Apr 2023 09:32:10 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the NewVision NV3051D panel as found on the second revision of the
> RG353V. The underlying LCD panel itself is unknown (ST7703 is the
> controller IC).
> 
> Changes from V2:
>  - Rebased patch series (to address removal of dsi_dcs_write_seq custom
>    macro).
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next-fixes)

[1/3] dt-bindings: panel: Add Anbernic RG353V-V2 panel compatible
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e41fef1e43ae86aecc466e8c9e449d7bf71596a7
[2/3] drm/panel: st7703: Rename CMD_UNKNOWN_C6 to CMD_SETECO
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e0310564a7e31d7359a6831226aa9b559c6728a0
[3/3] drm/panel: st7703: Add Anbernic RG353V-V2 Panel Support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=0ed9208cb120086f1b600199c548f00544406fa5

-- 
Neil


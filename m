Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7B2F689DD8
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 16:17:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234164AbjBCPN5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 10:13:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234044AbjBCPNe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 10:13:34 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4840FAC204
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 07:11:33 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id r27so1108724wrr.1
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 07:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87My+JeR7sqZ1pfnH2W1D2Nc/Mdh2BzT+5B0uXWCyug=;
        b=nZGpKqoQoCssVtc2Q840o1b00JIsIYqWwhSsoghl3dnRl8oxQElnedMQMFGuYj/wuX
         OBB/9jdchX8JG8xa89f37J+fUta0Id3Z5kzSFwp/ozZ+lcfRP+iwB8xnAn2T7v5gbBl5
         +rgFjFHOkTuNB+oIzEo/c24rU3V0Mwx+BtJK0b4WykL1j00O51abOCuvd3MM/phybBzI
         Lo4ISfDL4e2BTU3AJXDBb/4tH62hvhh1rn0geCDQlCa9grKo4I1/hQDGtrQGfMF4eKo2
         Czvrj9ZI5bRlkuhv/FSoWLvcwTUukm2U/DGB46I0PgitItY9FladO5+t5nXvjn5dYC/u
         w5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=87My+JeR7sqZ1pfnH2W1D2Nc/Mdh2BzT+5B0uXWCyug=;
        b=T3DYWOCLA9njLOgHXnpizMuS1/+f0PpXblCwXdAeG8H1dmH57sGKDE/JyXPHEwDcVw
         zItaONaCYWSq0jYpnVfeOnY8QVibjc10+Bbd3y8Vey6TJQmeG9ZiukJALj9ZADo4WMrz
         HB70qQbG16z9SCHxR7RUh56pWd+BBX1FhDTgkSUcCItM1858KT6ZDkEtP7ZDdzyfp1hD
         JvtZH02GklfSURmLMC56Q0SMVc08YWttjf5MPTIylL3D32RCZWuqWN5emJZmxKe7fQ27
         ZL/tneZpdTx3e7WzpxXF9J/0qxiOwf0mfz+agNfESN/pri8DqPkUyw4MjXrEghQ23g+U
         dfdQ==
X-Gm-Message-State: AO0yUKWno/Kd3LGyaIgcIzLQvEtIpKBkIZVoDXf5K1OIgQ216EdDQvvh
        rP1gPLDa8Hae1Y3VuyUqUw88Fg==
X-Google-Smtp-Source: AK7set9bMWKMQIGVOq16PvxwMRExF7f4Ud9MDmGkSiRQs545t5i/Ztb1oCgu3jSplEY+NdrcRo+nPg==
X-Received: by 2002:adf:c754:0:b0:2bf:be8b:32e with SMTP id b20-20020adfc754000000b002bfbe8b032emr9171799wrh.17.1675437035151;
        Fri, 03 Feb 2023 07:10:35 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h4-20020a5d5044000000b002bdf3809f59sm2202419wrt.38.2023.02.03.07.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 07:10:34 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-phy@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        linux-samsung-soc@vger.kernel.org
Cc:     =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        phone-devel@vger.kernel.org, replicant@osuosl.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Henrik Grimler <henrik@grimler.se>
Subject: Re: (subset) [PATCH 4/8] phy: samsung,dp-video-phy: deprecate syscon phandle
Date:   Fri,  3 Feb 2023 16:10:27 +0100
Message-Id: <167543702106.62628.16413307774564578316.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-5-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org> <20230127194057.186458-5-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 27 Jan 2023 20:40:53 +0100, Krzysztof Kozlowski wrote:
> The DisplayPort phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.
> 
> 

Applied, thanks!

[4/8] phy: samsung,dp-video-phy: deprecate syscon phandle
      https://git.kernel.org/krzk/linux/c/f765360d291e5f44d454eceb250008fc2e07badf

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

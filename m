Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E24A167DEC3
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 08:56:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231972AbjA0H4b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 02:56:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231506AbjA0H43 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 02:56:29 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58A507579E
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 23:56:28 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so4838465wmb.0
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 23:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K7q3YsIQN3+sD4qAb9lZvQcNflQx9W2XN7v5+vE+T/o=;
        b=PmP9XzVizDlYOVJw3e1r7BMEkvU53jfG02ubXXjefC81WGgl87HoT76lvVzhoa7Hvc
         Mjl4mopHBYCjuQwCOa0Otoqqvky5lh2WafSGwu49wyC0IVd9YoXDbjqAiCwmyeoNufAr
         h4LDhFz41H1IvBFfIEH3Mrs4elAzBrJkFfgonLiBPTYoJLuLIIU1piPti2Nm5L3nbWjp
         oqBL7ZWco8EmX4G6CUWx8IBQsYmFEhOKxEJwcO8n8bOfYj+eRF30raaLzq/8DpvWdOP7
         oSABKJ/2EqjlCPcuEXNA+c1b4C+CuPWEhPjsB1ZpzrUD+MsYm0BsKzGz+ulQgmNF4lla
         nHrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K7q3YsIQN3+sD4qAb9lZvQcNflQx9W2XN7v5+vE+T/o=;
        b=vg1YqDOjkXvPVZACpZPNvzm7d6TfBZ/I5rqpTZwtK5ZSCGZpQfzoXY0V0JVpwL+ykJ
         WZnOnvpGVR2idccQxzJPnJ/ebMK6OVF873Ix6Ay/tDYcW8943/7F1UsMIRGOZrnEzhQn
         oFZ3l+Jfyw3hLAfZmKjdlPgqncE1Eq+EMKwF1pnXQ86kFWGhYYx3YM4zqLzWjs4kBzrH
         7g25cNBh5FeHhZue3sRp0s5kw1phnRGZjGeAFiiIAEyN2fwnh+yJiFA8QirFkMK06TOu
         q0RzcdbpZwScAfoxv9Ws7gmODZuTwDdfmrPLWNfceGvgU/umA8HLtWN8SvfWKwiUsvIG
         URAw==
X-Gm-Message-State: AFqh2kqYfZYQFrb/OvC21Uj2WBJGqf8qYQ+S/O8I6XFhVxAQarGbAJGm
        fJf72amqgyP8Ut2IXZt7iUCm8Q==
X-Google-Smtp-Source: AMrXdXt7WKMFrRT9BaJy+0OsAcoq1gHNaGBCwt5c8hAYarVFMJrQfW8L9JCxEzHhOikTZhNwZK8ttg==
X-Received: by 2002:a05:600c:35d5:b0:3db:fc4:d018 with SMTP id r21-20020a05600c35d500b003db0fc4d018mr36631523wmq.40.1674806186720;
        Thu, 26 Jan 2023 23:56:26 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id k18-20020a05600c081200b003dc3a6f9447sm948683wmp.32.2023.01.26.23.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 23:56:25 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        David Heidelberg <david@ixit.cz>
Cc:     ~okias/devicetree@lists.sr.ht, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230126193732.69699-1-david@ixit.cz>
References: <20230126193732.69699-1-david@ixit.cz>
Subject: Re: [PATCH v2] arm64: dts: meson-gxm-khadas-vim2: use gpio-fan
 matrix instead of an array
Message-Id: <167480618547.1454427.9904179152485519398.b4-ty@linaro.org>
Date:   Fri, 27 Jan 2023 08:56:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, 26 Jan 2023 20:37:32 +0100, David Heidelberg wrote:
> No functional changes.
> 
> Adjust to comply with dt-schema requirements
> and make it possible to validate values.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.3/arm64-dt)

[1/1] arm64: dts: meson-gxm-khadas-vim2: use gpio-fan matrix instead of an array
      https://git.kernel.org/amlogic/c/527c9552f5f8a99b6c31bfb39e9470cec07faf49

These changes has been applied on the intermediate git tree [1].

The v6.3/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


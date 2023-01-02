Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C50265AED2
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 10:46:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231962AbjABJqC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 04:46:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232042AbjABJp5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 04:45:57 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FA8EEBE
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 01:45:52 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id bk16so12641538wrb.11
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 01:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WUhOJ4IoESrQwEIJSXhHd8/46+wScNtzOgrodDR1Dto=;
        b=oo6SENSI5d9/g3PhqgDoHzVbQ5cD6rh1VWKeuXQn3vlANcOrokLilbxnAxyM5UlHXl
         NW96zGRIUmun6vb9ckp49ZgwikZ7sZrboZyRRiThuBBn9y5xWmfBykLHIu1IdnLnGQ3a
         9nNvpcfClWaP5z7dQId8GeiFQqpTeE/gx76JytQgkGu7Yd0h4R7X/j8S+UWVkeETOr16
         fDJ1asbSbKq83gH+RH+7IpxCHymaTtY19T46BhFSd1ADz39WGC+tB1djzJWwk/oc843O
         atp+7Jz6bLGqPL1DgOZZnJd4hvobHrwXD6n9OqRfAQRvR87meShvntxl7ysot1dEMKzp
         XKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WUhOJ4IoESrQwEIJSXhHd8/46+wScNtzOgrodDR1Dto=;
        b=5i0ZbiMO+Ce7ImXoTHUzMKuhiW/rXWkNRGGd3PvyJK7Mt+KpVixwxgfswRIiXXW4RM
         H9OKByqn3xtXjPoMIMg/edWipYh58GTKMdYc0CT7ErkgX4yTCQmmWcvoAJBFCG3BzZuT
         dvDr34Yl4VKw8vUp1Kfeffs6nWv/INY3IdE9VdaAGql6YABs4TyutukA8+gzRQtAn15/
         nyjuKVWHG1tbvpn6Umr9oNAMbhSRP5q0vRtcmKVK66k3MW6W2VlZ1WcRd18u7Qyf3Oj2
         BpsIoMVh2WAannTvIzHAIi6J0xJwm7/1eOieIJhfo8KIwti+8LQTrjcANaoQ41XKx0EJ
         UPfg==
X-Gm-Message-State: AFqh2krsLHY4U2m9zTj8vyJRjkaDIIF+5qncAxR5nXBS6JhnP/H15a8q
        +uGsJeBMUfXuQx36f1kSfu09Lw==
X-Google-Smtp-Source: AMrXdXuba2JBxmozJhuTBAIpVh1ksFcfIJoDILKrHE0lEw6Hh/gGocGCnufZZbFqajhZ7nbidMvIlg==
X-Received: by 2002:a5d:620f:0:b0:242:9e3:72b8 with SMTP id y15-20020a5d620f000000b0024209e372b8mr28311651wru.31.1672652751312;
        Mon, 02 Jan 2023 01:45:51 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id y6-20020adfdf06000000b002879c013b8asm14413840wrl.42.2023.01.02.01.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 01:45:50 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20221125144141.477253-1-krzysztof.kozlowski@linaro.org>
References: <20221125144141.477253-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: align LED node names with dtschema
Message-Id: <167265275027.299493.747557222929331927.b4-ty@linaro.org>
Date:   Mon, 02 Jan 2023 10:45:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, 25 Nov 2022 15:41:41 +0100, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern:
> 
>   amlogic/meson-sm1-bananapi-m5.dtb: leds: 'blue' does not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.3/arm64-dt)

[1/1] arm64: dts: amlogic: align LED node names with dtschema
      https://git.kernel.org/amlogic/c/ac7f40c28bce2fd1a771e634531ca4b0dd9576f7

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

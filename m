Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA2BF6FBEF6
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 08:03:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234531AbjEIGDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 02:03:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233309AbjEIGDD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 02:03:03 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9018E9EE9
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 23:03:02 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50b37f3e664so9866494a12.1
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 23:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683612179; x=1686204179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IvYY7AI0meczzDhFBFjCtCVBYRa+GRbOVH4IYY95E3Q=;
        b=f3vhA8Ly8CPmru0BceCpbgAk9gFMpR4CNReR1mZ/IVO+G0nSTxbhsdMDd/2GcT5G7H
         9PLRpUhs0Vtfp69AsYivyB+pMBsikdCfAdZ5ZfPJKKSUSatR0bQ1+qnQzHvUptjGnwnG
         mn3kbq/fda5LJlfktEt9AR+zUCQTDZ/q2ZOJofBODwygaU3PRteUtaFCOe8QrN/fobLv
         zRBSfUo+ehb6BgIfDTZCD2lQt41MpJmEi8YN8MEHCU4s6OlFjf7DOaVzgee+KRrfVihY
         7jZ1Rdx5u1+EJry2JyIFVeXoteY+orhJptasmLIfxepw0v+/m8EAtrLk3aLw2Sx+TzmP
         XvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683612179; x=1686204179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IvYY7AI0meczzDhFBFjCtCVBYRa+GRbOVH4IYY95E3Q=;
        b=H1Oe0L76EDqJHhTCKOgqEBeLvPJY9DR1JWXlhHyxkIUMDCqDzt0knSHoo1LKY7kAkb
         7eSWEsQ6iMhp94xGDBCWwjekt37AZKkamM89kkTE2IqaGp7fVp12+2gueYknD4nAQOds
         lMT9UQHGyutJcc6FobkDo2/4kECobwHksPsxcrA98ovKuXWZBMOKAA/4T8VLPZYHixnf
         6hxT9+k328TOfOFNc2Kxn1rvCd3uPsp8E6ajzVf2zB4G/CPIrx2H9AX6Uu9txyveQSy6
         krD86EKnXaTjadEs1BGwW++rggqDK8eUoJn85WcFtScJAnKiVr9mzv+rnvFfxfN+gOGT
         ZEXw==
X-Gm-Message-State: AC+VfDwsPXeXmaHcQzyy3s9SakfRq6+f86HowtpQUC+edJieZN1/RoeJ
        5KLGd03Oo1BgxXV32EdTP9IHbw==
X-Google-Smtp-Source: ACHHUZ6b+LkL2A2wXFqgBFbw/JA0U/+gh2SJgTeuGDOTtjKAQfmTnswGCKNbnzpuFoffWPwZ1VBXmg==
X-Received: by 2002:a05:6402:4b:b0:504:7171:4542 with SMTP id f11-20020a056402004b00b0050471714542mr10433647edu.0.1683612179558;
        Mon, 08 May 2023 23:02:59 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id h10-20020a50ed8a000000b004c2158e87e6sm332281edr.97.2023.05.08.23.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 23:02:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Richard Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH fixes] dt-bindings: PCI: fsl,imx6q: fix assigned-clocks warning
Date:   Tue,  9 May 2023 08:02:56 +0200
Message-Id: <168361217270.4227.4785750051546558016.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230508071837.68552-1-krzysztof.kozlowski@linaro.org>
References: <20230508071837.68552-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 08 May 2023 09:18:37 +0200, Krzysztof Kozlowski wrote:
> assigned-clocks are a dependency of clocks, however the dtschema has
> limitation and expects clocks to be present in the binding using
> assigned-clocks, not in other referenced bindings.  The clocks were
> defined in common fsl,imx6q-pcie-common.yaml, which is referenced by fsl,imx6q-pcie-ep.yaml.  The fsl,imx6q-pcie-ep.yaml used assigned-clocks thus leading to warnings:
> 
>   Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.example.dtb: pcie-ep@33800000:
>     Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
>   From schema: Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: PCI: fsl,imx6q: fix assigned-clocks warning
      https://git.kernel.org/krzk/linux-dt/c/8bbec86ce6d66fb33530c679f7bb3a123fc9e7da

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

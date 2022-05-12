Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3471F524FD0
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 16:19:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355212AbiELOT3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 10:19:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355221AbiELOT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 10:19:26 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8824994F8
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 07:19:21 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id l18so10532841ejc.7
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 07:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Hdi5AuTWw/xhifRFpbg8OcQjNAh6olbqL5auovjbFvY=;
        b=rVUmHS1DW69t9v5G2eJDPdwuvNv/BermHPVo/I+PSjmZBSjctPYZ291RDfd11AOT3A
         oX8RtsPGzYx6tGphtt7Qj6iL311rcKo+xwUaXy37LtaeE4Zbu2fPZyQZJ7g6NxSCEzSI
         YvGy6qzH0q7gzpx1LpmUAT6DIabVs30641l4EmbbVD6ThLjRiWkgBDZ3iwUNaP1gUkMI
         kucijlxVT3xU2QptZCgLlw7W+RGW6HUT0Yn0iPDXy6UM4M0kYUu2/+zSGvM8N/FRyORP
         MOlP6K9vNP1quyL3HEzXKfrDbpwohaHSzCx7EvdoiFTlCfHnI33tkgm7ZQaRUXGRpOOu
         3b/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Hdi5AuTWw/xhifRFpbg8OcQjNAh6olbqL5auovjbFvY=;
        b=L9AH+Pd1hEO3UKp7IlLWwQcXoJ6DRNWdXwfiBwIu553VNasAzUyf4ebOFzumfz2y0D
         9yXUXU359q0CGOPJ+lvCzTxkPB/xbcjGv4RXcKGpjADaBhuF/MWEtbQySK/c4gUSCrXd
         TQpVmC7XMUAunhgMm68mg3wsCBy2fO4qOCWwxpHJ0d0ztKbRn2+L07zRw/aVb2pkISIU
         gntiYh59R4HwuVoQj97lf19030/7MZL/2YqPIn5y29JEA8vgfC8EpuEcDMrQdQrbV1yz
         aAMeXwcxWQC0A2gMUKfkgkhfp5Il5zi1zDZlKvxfsU9a+FtSPF/nfITWu/f6ZvWmpJMl
         yZ3g==
X-Gm-Message-State: AOAM530k05G5Y/Fky+NtJLliC9VEJdvKdrKtHydMib1DhVNqojyJnkDN
        vVGBP/1zkibVxjvNWXfwDedXyg==
X-Google-Smtp-Source: ABdhPJzGNMgwfwSdJmiLcGeqy+sU+UkzxsBZCQ/8fKHee9TRdi8AM+blkTVpCAiuD2nW+55bXHtdsw==
X-Received: by 2002:a17:907:7f1f:b0:6fa:2704:c601 with SMTP id qf31-20020a1709077f1f00b006fa2704c601mr142544ejc.496.1652365160379;
        Thu, 12 May 2022 07:19:20 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z22-20020a50cd16000000b00426488dce1dsm2613078edi.25.2022.05.12.07.19.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 07:19:19 -0700 (PDT)
Message-ID: <88f87041-fe15-dbed-6650-e694210583e6@linaro.org>
Date:   Thu, 12 May 2022 16:19:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Fix DT example
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>
References: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2022 22:05, Laurent Pinchart wrote:
> The DT example incorrectly names the ISP power domain "isp1" instead of
> "isp". This causes a validation failure:
> 
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: blk-ctl@32ec0000: power-domain-names:7: 'isp' was expected
>         From schema: Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> 
> Fix it.
> 
> Fixes: 584d6dd668e2 ("dt-bindings: soc: Add i.MX8MP media block control DT bindings")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3ADF54D336
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 23:01:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243742AbiFOVBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 17:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239542AbiFOVB2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 17:01:28 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BB952CE18
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:01:27 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id 31so10818365pgv.11
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CObWiQyDXBcqwHMSgHdgoQvJyOBsk+gMn1MuiTT1CH0=;
        b=cngItkia7EkWCt0ltEP9ZhGPVKKsC0nN4Cr8cUw6Qo2zmZoDQ1HKdshxe8xGH1q7Dn
         iDzGp/lsY3/7Gc5MMuCTAQklWssKAbe372mOQMmSCD2fYhr4jxWbME2NtqnD+FmfN5tr
         yPs6Zi59Y0WpcJ1x1Zs7XLPd6RAlIkJK8odVjJ1fewVhP0BnuQHEuLdajx7NC3njxAR/
         uNRv7RX0lrsHf71wet2D2goP3gGog3HyxPgTwOvchc/UxBozwq/qXs71+UQwOesjfWpg
         J6K/Uee45BAP1yd05QRcAtjY6/mtu8UZDKcQYbGdILLAYepYOfGOGNCtK/s758sO2XAx
         nakQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CObWiQyDXBcqwHMSgHdgoQvJyOBsk+gMn1MuiTT1CH0=;
        b=1ymL5kjahoInQ00ebEhOJX1ZkupMmBBlAeZsHFNFq8F6CsvWHNGRKcoQLRgbsJOzyD
         48owb0Wd+ULgFa2m+qreqIkfjd8izsaazhibFb+zMVuM+y2AJKSs0nHpL89rRsr8XqAf
         m3YAhODmLnOl9uI6l3de91NW67Qq8soW31csLXiglRw9Ykti44hj5HhL1S5zE3S1aCCQ
         JBoporBQMmgaFm5vUHR2MJ/wpRXEJlUWk6f8C6IGRmYU4LC1Tv5vR8CadyPtjZwYWcUt
         ucV+/E/QZsyZinbYeWC8uhoGrvI3qVaD5r+Z1um9tx2p5QbjJ2X0B0Vxce05TrMrdLpp
         zsdQ==
X-Gm-Message-State: AJIora/CnOR5tMUlSBp4Rj/rZhAqWp0lmSOwsgSW/4OBmjWxFLLr5UeD
        wlxJj8I0FvYqCahyzHfB6rDL1w==
X-Google-Smtp-Source: AGRyM1vlkaTy0djR/z8XJ2pgGlhSaqWPzSpi1MoXxukmAmXmDCE+vhaCXhq7SDizPPG0BYT0Y090XA==
X-Received: by 2002:a05:6a00:b8c:b0:51c:2d3d:4595 with SMTP id g12-20020a056a000b8c00b0051c2d3d4595mr1454217pfj.80.1655326887080;
        Wed, 15 Jun 2022 14:01:27 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id n46-20020a056a000d6e00b0051868418b06sm86756pfv.35.2022.06.15.14.01.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 14:01:26 -0700 (PDT)
Message-ID: <83e27382-6f97-015f-2ee1-f43820967093@linaro.org>
Date:   Wed, 15 Jun 2022 14:01:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 4/4] dt-bindings: media: nxp,imx-mipi-csi2: i.MX8MP
 support
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-media@vger.kernel.org
Cc:     Jacopo Mondi <jacopo@jmondi.org>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Rui Miguel Silva <rmfrfs@gmail.com>, kernel@pengutronix.de,
        linux-imx@nxp.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20220615192602.25472-1-laurent.pinchart@ideasonboard.com>
 <20220615192602.25472-5-laurent.pinchart@ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220615192602.25472-5-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/06/2022 12:26, Laurent Pinchart wrote:
> The CSIS CSI-2 receiver in the i.MX8MP seems to be identical to the
> version present in the i.MX8MM. Add a device-specific compatible string,
> with a fallback to the i.MX8MM compatible.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

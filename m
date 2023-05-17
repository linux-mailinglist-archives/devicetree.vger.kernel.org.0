Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB8B9706330
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 10:42:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbjEQImm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 04:42:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbjEQIml (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 04:42:41 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 832DD125
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 01:42:39 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-965ac4dd11bso81756466b.2
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 01:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684312958; x=1686904958;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kFIUj6ro/7QaDjaQIGgghoO002lQDLToBv6wXhWPCX0=;
        b=WsuLM9Xg+vZVOIz66BMTOxK1sgHEmBl+UtpBWhnUyTcpDLAXgdTeOUY/Hd80j+Kqej
         zTr0zn+KfDU6sNL62BulsPoB2PMhmNDQwr9Rw8vB/PRr+Q4SZTrXAGxmv/+1wLsaFOA3
         3JWKefmWffxm+7+U3sfpd4lWZC+NoOEizXE9eZqfN20vLB1f6M1oxnDoY+yrevnZkQ4r
         ePfPx8XJfbxeA1SmGwZX85LxyBFmL4JGeLscw9ov+yrzEp7n9SFFkrsM71PJUbLIMcwA
         dX4Fl6aE6aybLflkQ/HSNBdYJXCCRKvh521eDtUCDvuNnXlcMoHcbau200ENpgo+1ZJ8
         u8zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684312958; x=1686904958;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kFIUj6ro/7QaDjaQIGgghoO002lQDLToBv6wXhWPCX0=;
        b=HW1ZFfjhIl3UswxYsJeb8KQ6G0RCSMBqXGz4Si87APfU1pnF3u+RZ0jsSyR6fXZDk8
         r/9oT/7l94dkAWerlaJziZ1mB5pmE8uaNRggViPjqaw9s2wUTtWMBHSvzsXzTck/zcsQ
         VFB26LfwNV/ud+CMiJ+bsw8hMAg6kwGdFbRz0S++pn+KaJZAZnLa/9hYKP6W58SLV5d7
         jVxAepgKCJeSiCFi3AwmM/7EoRLzDU1sjlbtqMfXaaknNxg3JLseFmeOPKdovsJdAuZZ
         rheHzAt9oqgJOtm5uUl8GYgl2cyseO5Lx05a4zxMeZCY14QuYWMNtpP8aH3kydoZqepp
         unAw==
X-Gm-Message-State: AC+VfDzdyCUX4m+CPRv5+jpBFOV3DqxkYS1I6p1kCTvPN6B8P6bzOU6w
        ajOWmAwCUndSQAlhipV3OWFGTQ==
X-Google-Smtp-Source: ACHHUZ4yPBbQnTGIfddhY+24VgUcqsDAvv04zPUMNv2+UQYWXq+3onI4CXFeTRFpBFRLkBak/4cuIw==
X-Received: by 2002:a17:907:728d:b0:96a:5bdd:7557 with SMTP id dt13-20020a170907728d00b0096a5bdd7557mr21556402ejc.70.1684312958055;
        Wed, 17 May 2023 01:42:38 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c9ff:4c84:dd21:568d? ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id e17-20020a170906845100b0095844605bb8sm12113783ejy.10.2023.05.17.01.42.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 01:42:37 -0700 (PDT)
Message-ID: <5695d61d-fdee-dcc2-3747-8e6506cd74e6@linaro.org>
Date:   Wed, 17 May 2023 10:42:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: mfd: gateworks-gsc: remove unnecessary
 fan-controller nodes
Content-Language: en-US
To:     Tim Harvey <tharvey@gateworks.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230516153314.453095-1-tharvey@gateworks.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230516153314.453095-1-tharvey@gateworks.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2023 17:33, Tim Harvey wrote:
> Remove the unnecessary #address-cells and #size-cells nodes from
> the fan-controller.

Say why they are unnecessary (e.g. does not have any children).


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


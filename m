Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5CAB58CB3F
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 17:25:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243636AbiHHPY6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 11:24:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243697AbiHHPYz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 11:24:55 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C973213FBD
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 08:24:54 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id j1so11327490wrw.1
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 08:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=ZpNv7ygwpU3zV+hJKbpVC7ZqN2jr4ZrI6/ImvtG79CQ=;
        b=V9aizwtf5bs5ufS+AFsPhP9M7sxGgDdWLNtfFFo3ER0Rrwp6I3Trj4PbIq1qTev0b0
         CnV3ic9QVAlle4buR7D7Eg/tNpmDJM7RfL3w5kngiLRP9sxsXnWuHqsATh2GKxFzpHE5
         1WAFcG95bi7Yd5tOqLuS1NVTGNGWhRTwiiMKetOu3l/x7eIMSHpp/ryoJG3NT0GLqnJi
         djSl5KCDmJiLdWzJEb/qf+mbp20dS1HUwj4/mQg/0geGHSOVGYLknIWnF28ectN8H3gm
         eJ0YS/D0M3PeB+LaSvWcuMF7+nWF0X4Dsv5KBYbAt+Eitmf/mvXrqet+3C+fbNOrl9IY
         vDSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=ZpNv7ygwpU3zV+hJKbpVC7ZqN2jr4ZrI6/ImvtG79CQ=;
        b=sN8cXA+rJHSwoXdR3nFBmE8ALkn+cLCOx1VaGwMenECoeLNZ/YVxMYdg463FQ/vHaW
         H+LB4dgvVkDcsCXesEla+vFWOGRhUBpPzxideHrhdGNlofkEP63sbKIUbQq34xVoQ3Fz
         WZPhEIIJSj5TG5zixFKAZkJEmorynjj9ZwGEKoBYQfOV/iV0gkTWHqtLmp7YGI/U5sh6
         9bvHHyXTRJI5dbRJCT3l4WytwpuJDGhUfp7MczClR6KZt2o7RNaYkSMUEzQfZAHS3PXJ
         62QNdXto0lHASlrSZxRmYm+A2OpiMoEbzI2S0E28r82rrjPm4Hka9bt3Q3PLslUMMOMT
         vV7A==
X-Gm-Message-State: ACgBeo3PkFv2S/Yji9bcyuH9YYsrLBy6RefgcuC76t7fx6hjVZXPDWOE
        y4nr0rzsoQdm/tmdXwVjLY8diA==
X-Google-Smtp-Source: AA6agR4QLiZCUrwV0FifQHEhnZLHY6IIgq++1rOAYUuv93A0aufVJZ2RqDUkCoBv6moBInwtwTQ/0w==
X-Received: by 2002:a05:6000:1011:b0:220:5a7d:9cd6 with SMTP id a17-20020a056000101100b002205a7d9cd6mr10979515wrx.504.1659972293418;
        Mon, 08 Aug 2022 08:24:53 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id u13-20020a5d434d000000b0021e74ef5ae8sm11602753wrr.21.2022.08.08.08.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 08:24:52 -0700 (PDT)
Date:   Mon, 8 Aug 2022 16:24:51 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Lee Jones <lee@kernel.org>
Subject: Re: [PATCH 16/22] dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS
 register
Message-ID: <YvEqw0iiW9jAdFP9@google.com>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-17-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-17-jagan@edgeble.ai>
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FSL_HELO_FAKE,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 24 Jul 2022, Jagan Teki wrote:

> Document dt-bindings for Rockchip RV1126 QoS registers.
> 
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
DEPRECATED: Please use lee@kernel.org

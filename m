Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C03A570085
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 13:28:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231481AbiGKL2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 07:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231309AbiGKL14 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 07:27:56 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72344DF18
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 04:07:23 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id d12so8053102lfq.12
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 04:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=esWLLHFam/15zHB96iM4D3bq4no+BOJdxnjIb7Et4dM=;
        b=Crc/1bAGZOpGOgG+jajMBcMUzo8vpCFAgCrlYjNT2J1FVc0gawgKITZ1tqCwrezR76
         oS+4Oy6e/M5u2r42PtJsT6iBTUMQpElwDAQx1bFH6SBaW4gwLqRD5ccgeMMSioiYISzZ
         ra3fk2YllmukAvOz5nF30sRHQosiFVK1vVjVF5+dGIJ8WzN5/JQL+GPNs/24SvPQTrSb
         HPpLOxImQKMkP8+Lywm5Zut6txhbmSKQrPHWAK7lkwS4qEV6QuqQflK/0wVGb8JoKwuA
         Jm9k1kRFbvC4V5w79IdtpIofS+hV0Ik6KF4XbBxoPmCsp00n6Ws9rMDexHls/4tuL4YJ
         rZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=esWLLHFam/15zHB96iM4D3bq4no+BOJdxnjIb7Et4dM=;
        b=vBBuWIf86QVfujkmBZaHa1eFtQI/y1FoEgFBcAACqF1CqlZxUuCpCBkgBt1iCx1daQ
         VZh2ZBsxhP90BaSKEXwnYst+eWI+Dj++LCEzNHlXge2XTNJo9camkaCUb97zK653oRgC
         LZ2bLd4Ee1VLPL06bETYOaP/VU7X+NAj4jpvEPoPqRsnDGEINOKeqr1RE/54wfzYnMp9
         +06ntYTnB1A/cdA/UtAASeow3hzuXvQCo7C09k/zNis6Mbp2mlXeO8E5oSEya1UkBFV5
         YJCL6DPxfs14kK5h2Zl16Hl+nVKb0l958otIxkgcCnSB0bx2/Ol7GoD0VvdT3WP4nsET
         Qawg==
X-Gm-Message-State: AJIora/bfrQ796dmCMiMK+xu9lQjtQJuDDfBrKldKC5KZP6VVPcGnru5
        mjHSG+B+6y0F0UdndkDqSDVWaA==
X-Google-Smtp-Source: AGRyM1tNeHMUJvVpip2GXgSQxTRj1bmz7Z/WsdSE95/Eb16GoRB8MpQzcpWWaGdYAfxNOiNUDDGI6Q==
X-Received: by 2002:a05:6512:c21:b0:47f:6392:dcf5 with SMTP id z33-20020a0565120c2100b0047f6392dcf5mr12054254lfu.117.1657537641871;
        Mon, 11 Jul 2022 04:07:21 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id x2-20020a2e9c82000000b0025c04962b5dsm1685748lji.139.2022.07.11.04.07.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 04:07:21 -0700 (PDT)
Message-ID: <f3bd6afb-b1f2-a5e0-de52-e6ecb2f53217@linaro.org>
Date:   Mon, 11 Jul 2022 13:07:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: ufs: qcom,ufs: add SC8280XP binding
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220711101441.4896-1-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711101441.4896-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2022 12:14, Johan Hovold wrote:
> Add SC8280XP to the DT schema.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

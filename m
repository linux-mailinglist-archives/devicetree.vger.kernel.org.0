Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F9DE50D232
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 16:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236466AbiDXOUX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Apr 2022 10:20:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236823AbiDXOUW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Apr 2022 10:20:22 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDD76240A4
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 07:17:20 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id y20so24979025eju.7
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 07:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=FTcbreNzit4lFujKbZVkI50XE/fCo3nhqPPDp0S/o0I=;
        b=ALm1perdnMZ0U/5Np+noEQPEWoaxtzCMsPeAABou07ukt6smeu/ByTmIUeXAP/i0fH
         hIrqC9T/0FxsUd8au2lJLzmyCfc4cU2FXkLYuJA+FK3U1tVRP3XFS2FLe0PEkqTXls56
         PtwdSG4D701jgG2DJzL2JbLPY5Wdo4cD8T/M6jT+/n3x8dYqXc2NQ8MOYcx8O58OKLEA
         wc/eivx/N8rrECn9kJsKklHT0NtYJ7zuOAE02JiEwxkLpeIRoOUez9Ktlm85KahXr45R
         GDnH4oWDIFE02v+2lFK6Nit9pI1rexB2Nv3N3ruGtUVtgWWGsC5odbgvYqGlfeTgK7rh
         SRzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FTcbreNzit4lFujKbZVkI50XE/fCo3nhqPPDp0S/o0I=;
        b=WwB1Va4ZRznd2tzrJQZ+ikm2S2QV/wIBmCPDbvWmI3UVN3oxkku+igUPjA9zz9auvo
         lsM30gGMWGYBh4gLutsz7m5Gjt84TF6J0Ky+9DgDhjc/Y57ZrRt1dw8kK2ZDIAaYoUKe
         YLT3/Bzec/jykeaPvG2y0IKDDxzNZhjFJ8BP6iuL696DyiEyp5cCS9GbjgCr42aegLJp
         WG8yx4cPmSEueYoVOmE3/hqLGg4jgwsg5J3k8nDknbszFrNjowEnrQaiss3J9cjqHlB8
         Y4QlFFrtZS22vweqPe+XlZReNQcHqPfCA+GlJLmf3Ly0FweO1eLSFkEUv9P2i1iYeWrj
         GgnQ==
X-Gm-Message-State: AOAM532gr0W0y5VTs+voTGoqhqPED+/w1Gjp9cX9YfUst319HR9Xdsu3
        TS42Y+t0IgbGiCgjudp+528kHg==
X-Google-Smtp-Source: ABdhPJxXW89xIavurkBTqOY1VrHCJ7eDRfv2ZCewJi0ZlNbYbPHMU1bGvQeeUTGJAqqRb3/PFNV3VQ==
X-Received: by 2002:a17:906:314e:b0:6f0:659:963 with SMTP id e14-20020a170906314e00b006f006590963mr12681191eje.358.1650809839506;
        Sun, 24 Apr 2022 07:17:19 -0700 (PDT)
Received: from [192.168.0.235] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r24-20020a056402235800b00425c4dd84a2sm2595585eda.29.2022.04.24.07.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 07:17:18 -0700 (PDT)
Message-ID: <24ae656c-d898-5cf9-37f4-0c050d9145de@linaro.org>
Date:   Sun, 24 Apr 2022 16:17:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: soc: qcom: convert GLINK binding to yaml
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220424101637.20721-1-david@ixit.cz>
 <184784e4-0a85-c0bb-fdda-b8c41d8abc0f@linaro.org>
 <ee77216c-c319-7a68-7f08-d5f845efa1e2@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ee77216c-c319-7a68-7f08-d5f845efa1e2@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2022 15:52, David Heidelberg wrote:
> Yeah, it seems there are several mistakes, I thought it was in better 
> shape (4 months passed.. :( ).
> 
> About testing, currently I have limited ability since broken libfdt, 
> which dt-schema use, doesn't work on new py3.10.
> 

One way would be to have older Python, install dtschema inside
virtualenv and remove system-wide dtschema. Or use a container.


Best regards,
Krzysztof

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47B4B567615
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 19:59:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232630AbiGER7V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 13:59:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230312AbiGER7U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 13:59:20 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3006AC0D
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 10:59:18 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id j13so2294339ljo.7
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 10:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+M8MzTYuEbXJSLPnO61JVVRmQg6x6SQdlrGpVMU3ZpI=;
        b=xea0ysUKeFTAO4aQdtUGtIF5HsmBkiebSA3tnIjwmngevEyDas+VoKZ+JDspL6iXJP
         iGi4dTnJFM3nxa28vQx0BFulGqHeNSIPmsNEQQZGclzZ7oT8brcv7YHXQhK9M7yIv0zG
         ZP2oWeGfnInf4YN//jf0Ua1u3IgXC7prR41iOUvK6XchDEUSEJfhP2kK1dt8NqQCbODQ
         FRbZ52fiEt3Rqokz3bBrP4Ad2Yl+42FGRrW0LpGz0E6Nr8VW4dxGSIgX8da2mppz5Zwv
         19pcGVsk2QPlsfYrQUcJ47aS9CQxxCArN+prM9/fjxu5kUZtRzFljBh1W0kl4/5uUFDZ
         0nMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+M8MzTYuEbXJSLPnO61JVVRmQg6x6SQdlrGpVMU3ZpI=;
        b=z1j2CQ8PPDrUTMjpTn1WU28doGb8Gm5ibA/rGNpo9KpF1uJ0aL/sS+42ou7xhmR0GG
         UACbCdHd7y+Q74/Ac9reHOXH8dw1Yz+9WhS28SPq09trPm9cOp/FA3pa4gVQ5h0dLfMb
         ofjWdjcIGnS8xR0JxFIdfvSqy1C71jBaWzOS+R495cNGJbXAX4ouWQ1V/x/0VI3bnk0W
         d5LMO9oysJ317NxaJ2zbYZBM6Zk9QixgFfJLB8CDi4RBrSbCR4CZfTFVPSwENSSLsLXi
         nW9Aq81wC03PIJGtXzRAW9s6bivH565NvKle5ESZFYSGMk1LPsf/sPLl8vN5yKJdTDiV
         NYUQ==
X-Gm-Message-State: AJIora9eza1TzfBHF9pHyoQ6lhmXVwCEif6KzubEPRih8Q6BUSzLwks1
        GISsktlWla9iJmOGLK+JRWI32Rm6AA3DtQ==
X-Google-Smtp-Source: AGRyM1uNwlJwg5ebt+9H4yH6oyLkpWmdvMe1h48WJGcGaCAAGs08QOzCrbC8D46cftYzuzpePHl+9A==
X-Received: by 2002:a2e:b94e:0:b0:25b:b99f:4f58 with SMTP id 14-20020a2eb94e000000b0025bb99f4f58mr19818877ljs.263.1657043956619;
        Tue, 05 Jul 2022 10:59:16 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id m10-20020a19710a000000b0047f68b11329sm5785881lfc.266.2022.07.05.10.59.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 10:59:16 -0700 (PDT)
Message-ID: <9792c554-79b9-dab3-5574-765541dd7a26@linaro.org>
Date:   Tue, 5 Jul 2022 19:59:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] [v3 1/2] arm64: dts: qcom: Add LTE SKUs for
 sc7280-villager family
Content-Language: en-US
To:     Jimmy Chen <jinghung.chen3@hotmail.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Alan Huang <alan-huang@quanta.corp-partner.google.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <SG2PR03MB5006CBD49DB3052D57A6ABF0CC819@SG2PR03MB5006.apcprd03.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SG2PR03MB5006CBD49DB3052D57A6ABF0CC819@SG2PR03MB5006.apcprd03.prod.outlook.com>
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

On 05/07/2022 04:57, Jimmy Chen wrote:
> This adds a LTE skus for Chromebook Villager to the yaml.
> 
> Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>
> ---
> 
> The format of the added items is based on the below document.
> Documentation/arm/google/chromebook-boot-flow.rst
> 
> Changes in v2:
> - Update the patch title and the commit message
> Changes in v3:
> - Update patch title

It's still wrong. Not mentioning incorrect patch formatting.

You ignored my comment from previous version. Please respond to it. If
you prefer to ignore it, then it is a NAK.

Best regards,
Krzysztof

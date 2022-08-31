Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA8435A7785
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 09:31:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229919AbiHaHb1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 03:31:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbiHaHb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 03:31:26 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 221DBBC831
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 00:31:25 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id z20so13730054ljq.3
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 00:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=SowT+GgtM4rpf2Tm7Xdg2PLTWLyEuq4YWLGVJCfBBo4=;
        b=eDUHucZHmNWPS4dcTDAvSB+3Gf6B84OpnmrxcPBg31ZikUd8NxfnOhl5KSqS8dqwTH
         By91LHkdLFJWxuU3BZip5eaLMrQ3CxsdmPbKI+MBD5j0nW1JUI4YzW3nktfZKPaQBcHx
         KtZG8TaSTS9srPQOsqMP85vqWbBerDKMiFGow/qtjx4HobjfONZP21xmc1c5FfT+xX+j
         nIg8aDpdTtf7gCUwKdLU6g4jzLSvaiPTv8zA9dKiV3jUY+6cVOhIcxEpmKsLBKokL/TW
         zbez57XmSuj33sarUwUCCEpvsSsp5xK9z8nlhK8VXyG0a1y862EP0dyou+0fo27AGZu0
         Oc8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=SowT+GgtM4rpf2Tm7Xdg2PLTWLyEuq4YWLGVJCfBBo4=;
        b=r/qZ7PKZuTjrgKb/x7tLuowNEHOQTBB1MnJZz9R6/HOfDVoLDLwGMm6UtYq+xRj9Ri
         aJwEWegAHXH1MIw912Fcm8VNeYHacywYRKoFZ4xe0cYZndZwEsBcmhQJwQ7Q4lxanwZu
         zxzZbLqvnci05hriBBpqzTm7waIm3x6V7UZsC6YHlA8VGmDrFqKMWzqU7m1vJyKo/Hys
         KPLKy+mS9loAlOBrRzt4FP5RDxNVw19TEZNJcx4TzZ7CVA/Rt8f+PQQgFbPh+LyBBBoT
         X3R+y44jHnirScrfOGZNQljtHW0o+lAs/AjCU3lLHNrg/NrhP1T9VIs6NZU+n/ki8IPm
         Qc9A==
X-Gm-Message-State: ACgBeo2eBpNr8q4qP0rcZOemobC1eFOmURKwrcHHjjoRJ5RJIOjyHmmW
        HKQzrqPZglhHyaHKjnjyS9n2RQ==
X-Google-Smtp-Source: AA6agR4/QCHMtUzdlfGAL1xvdig57DJ6Ktw8Nv3Fk/1Sl/NMSIE1w3emriDGwD5pekMf0VCiwhuuGw==
X-Received: by 2002:a05:651c:199f:b0:261:d789:cd6c with SMTP id bx31-20020a05651c199f00b00261d789cd6cmr8281851ljb.450.1661931083551;
        Wed, 31 Aug 2022 00:31:23 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id c7-20020a056512104700b0049468f9e697sm1135488lfb.236.2022.08.31.00.31.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 00:31:23 -0700 (PDT)
Message-ID: <373fdedb-447e-b552-df83-737267068296@linaro.org>
Date:   Wed, 31 Aug 2022 10:31:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/3] dt-bindings: reset: syscon-reboot: Add priority
 property
Content-Language: en-US
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Ellerman <mpe@ellerman.id.au>
Cc:     devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
References: <20220820102925.29476-1-pali@kernel.org>
 <20220830230012.9429-1-pali@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830230012.9429-1-pali@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 02:00, Pali Rohár wrote:
> This new optional priority property allows to specify custom priority level
> of reset device. Default level was always 192.

You still did not explain why do we need this. You only explained what
you did here, which is obvious and visible from the diff. What you
should explain is why you are doing it, what problem you are solving.

Best regards,
Krzysztof

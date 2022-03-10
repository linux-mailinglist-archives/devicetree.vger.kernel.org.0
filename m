Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8984B4D524F
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 20:44:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238188AbiCJS6b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 13:58:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234025AbiCJS6a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 13:58:30 -0500
Received: from mxd1.seznam.cz (mxd1.seznam.cz [IPv6:2a02:598:a::78:210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0354FBCC
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 10:57:25 -0800 (PST)
Received: from email.seznam.cz
        by email-smtpc23b.ko.seznam.cz (email-smtpc23b.ko.seznam.cz [10.53.18.31])
        id 52bb75b409b521dd5312b9ea;
        Thu, 10 Mar 2022 19:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
        t=1646938608; bh=tLpYhaeFkQ8eZyycAn3jbsGk/bo3h3JaFofWfu13Srg=;
        h=Received:Message-ID:Date:MIME-Version:User-Agent:Subject:
         Content-Language:To:Cc:References:From:In-Reply-To:Content-Type:
         Content-Transfer-Encoding:X-szn-frgn:X-szn-frgc;
        b=Dajhl0b0elZKuVDaqjwFA4i8fpp5qORk1Pd9qKK7GFcJu3hf0/9myYcsQIY80oii7
         PjJ/FGaBb5969eSUCfU0NlCClWYPIpLNI4OPQQdUHSiBSMKdiSKDCN0oee3z1noMrr
         fBWJEMvGyKrQJS7S7OXbUZc55jVChFFj8Dt3vgXk=
Received: from [192.168.88.151] (ip-111-27.static.ccinternet.cz [147.161.27.111])
        by email-relay4.ko.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
        Thu, 10 Mar 2022 19:56:46 +0100 (CET)  
Message-ID: <2af7be38-7784-96af-aa3f-84b87d983b38@seznam.cz>
Date:   Thu, 10 Mar 2022 19:56:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: iio: imu: mpu6050: Document
 invensense,icm20608d
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jean-Baptiste Maneyrol <jmaneyrol@invensense.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org
References: <20220310133938.2495-1-michael.srba@seznam.cz>
 <20220310133938.2495-2-michael.srba@seznam.cz>
 <707f995e-9b09-ea23-5fc7-74239792dcbd@canonical.com>
From:   Michael Srba <Michael.Srba@seznam.cz>
In-Reply-To: <707f995e-9b09-ea23-5fc7-74239792dcbd@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-szn-frgn: <135fa290-378a-47e1-90e3-50c66bb08bfa>
X-szn-frgc: <0>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
the thing is, the only reason the different compatible is needed at all
is that the chip presents a different WHOAMI, and the invensense,icm20608
compatible seems to imply the non-D WHOAMI value.
I'm not sure how the driver would react to both compatibles being present,
and looking at the driver code, it seems that icm20608d is not the only
fully icm20608-compatible (to the extent of features supported by
the driver, and excluding the WHOAMI value) invensense IC, yet none
of these other ICs add the invensense,icm20608 compatible, so I guess I
don't see a good reason to do something different.

Regards,
Michael

On 10. 03. 22 17:34, Krzysztof Kozlowski wrote:
> On 10/03/2022 14:39, michael.srba@seznam.cz wrote:
>> From: Michael Srba <Michael.Srba@seznam.cz>
>>
>> ICM-20608-D differs from the other ICM-20608 variants by having
>> a DMP (Digital Motion Processor) core tacked on.
>> Despite having a different WHOAMI register, this variant is
>> completely interchangeable with the other ICM-20608 variants
>> by simply pretending the DMP core doesn't exist.
> I wonder now why not using generic invensense,icm20608 compatible as
> fallback? Why only having one specific compatible?
>
>> Signed-off-by: Michael Srba <Michael.Srba@seznam.cz>
>> ---
>>   .../devicetree/bindings/iio/imu/invensense,mpu6050.yaml          | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
>> index d69595a524c1..6784cc140323 100644
>> --- a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
>> +++ b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
>> @@ -17,6 +17,7 @@ properties:
>>       enum:
>>         - invensense,iam20680
>>         - invensense,icm20608
>> +      - invensense,icm20608d
>>         - invensense,icm20609
>>         - invensense,icm20689
>>         - invensense,icm20602
>
> Best regards,
> Krzysztof


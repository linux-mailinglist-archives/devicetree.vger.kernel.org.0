Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 522786ED00B
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 16:11:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229929AbjDXOLr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 10:11:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230072AbjDXOLr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 10:11:47 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C0FF9753
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 07:11:33 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-94eee951c70so686230766b.3
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 07:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682345492; x=1684937492;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cyOmFLO2JoBn3WUaKWXU8qyDvCA1T3Gwnz4RtedevIA=;
        b=PG9T1fl49/momPqz7oKrvqcQovXddXgLi8MagEHArWynQva1DUuyjG6No0tW7MMAI2
         /Lw8u9WhLibQy4jY8ZBNevD5UjjogZEjwFp9xa0m8DMAMcDojj0DmT9p5qS3ddu6YhVE
         sagFfArUw5Rpww44UUQ67doQb3g/iq6mZDAfePFMQrpXH6cdk25Nv9e5MeNV3jjQWNgE
         DiZkKWJyZYMDmMkhhhL7q1tjISXi9IvFiakQ4zOoVxl8IgpkhfqZ1IHZ/ECtK/bkgKkc
         6Vtpr41OwTNkfZ6yElPpu7RDd0c0nwp7W7awTKnAtSRFqIFpAZa4WmKAFJvUOSTxutFT
         2mJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682345492; x=1684937492;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cyOmFLO2JoBn3WUaKWXU8qyDvCA1T3Gwnz4RtedevIA=;
        b=UBX2MKaMPBkr7WqdpBgWWSEo6d2ww0qVgybpcRYrVasHVOKYW1tXay9hFtWQGrOtqg
         TELTY1VUTzQ6eeeYTStQ4FzImsOBUtmDjWRMUPiS+bJjZxqTDEArkOTNY6FugX3cPUTX
         GMKzu+r6hszQN4PETZtJDBRFfowMZ4FuOJsKiHhGyfu7eIl9Efvjac9CtBh6oQoBiSSX
         ahszYauE1onxBOLDAQBufucMgZsPvusehW2ZGOZ0CrjQcmLAFh97PHWu07vCOMh44cP/
         nxdLcpk9CpYdC/knntLD1tgkCvCQvW0yopGeHREGuUwTpQR+vbheF56LWE/pwwotHLkG
         Altg==
X-Gm-Message-State: AAQBX9dOXzqWgbs+kK9o9DtDCR+Q3JN2sPfQuqg2+shxkuyC1xZOmOK7
        u2/J7blJa97dCDKgxE15IdcKNQ==
X-Google-Smtp-Source: AKy350aBgtFZYTL1Ju0RY3cxLmt1xiSQKImJxRO9xYY9udVWu8lfE3sHZ3IJpLZ8MJK1oMZdRdr+KA==
X-Received: by 2002:a17:907:9554:b0:957:272d:7b2c with SMTP id ex20-20020a170907955400b00957272d7b2cmr8890674ejc.41.1682345491717;
        Mon, 24 Apr 2023 07:11:31 -0700 (PDT)
Received: from [10.105.146.163] ([88.128.92.195])
        by smtp.gmail.com with ESMTPSA id o9-20020a1709064f8900b0094f3b18044bsm5532222eju.218.2023.04.24.07.11.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 07:11:31 -0700 (PDT)
Message-ID: <786adb30-1b5e-96d7-358b-0b4d3e89964c@linaro.org>
Date:   Mon, 24 Apr 2023 16:11:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v6 3/7] mfd: Add support for the Lantiq PEF2256 framer
Content-Language: en-US
To:     Lee Jones <lee@kernel.org>
Cc:     Herve Codina <herve.codina@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230417171601.74656-1-herve.codina@bootlin.com>
 <20230417171601.74656-4-herve.codina@bootlin.com>
 <20230420123946.GB996918@google.com> <20230420151551.78c1288b@bootlin.com>
 <20230420134703.GC996918@google.com> <20230421092645.56127f11@bootlin.com>
 <20230421074558.GQ996918@google.com>
 <054a384b-b0ef-2697-4a70-09868694ec6d@linaro.org>
 <20230424095200.GC8035@google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230424095200.GC8035@google.com>
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

On 24/04/2023 11:52, Lee Jones wrote:
>>>>>>>>  include/linux/mfd/pef2256.h |  52 ++
>>>>>>>>  5 files changed, 1269 insertions(+)
>>>>>>>>  create mode 100644 drivers/mfd/pef2256-regs.h
>>>>>>>>  create mode 100644 drivers/mfd/pef2256.c
>>>>>>>>  create mode 100644 include/linux/mfd/pef2256.h    
>>>>>>>
>>>>>>> [...]
>>>>>>>   
>>>>>>>> +static int pef2256_add_audio_devices(struct pef2256 *pef2256)
>>>>>>>> +{
>>>>>>>> +	const char *compatible = "lantiq,pef2256-codec";
>>>>>>>> +	struct mfd_cell *audio_devs;
>>>>>>>> +	struct device_node *np;
>>>>>>>> +	unsigned int count = 0;
>>>>>>>> +	unsigned int i;
>>>>>>>> +	int ret;
>>>>>>>> +
>>>>>>>> +	for_each_available_child_of_node(pef2256->dev->of_node, np) {
>>>>>>>> +		if (of_device_is_compatible(np, compatible))
>>>>>>>> +			count++;
>>>>>>>> +	}    
>>>>>>>
>>>>>>> Converting Device Tree nodes into MFD cells to register with the
>>>>>>> Platform Device API is not a reasonable use-case of MFD.
>>>>>>>
>>>>>>> Have the CODEC driver match on "lantiq,pef2256-codec" and let it
>>>>>>> instantiate itself.  
>>>>>>
>>>>>> As the framer is going to used by several subsystem, I cannot instantiate
>>>>>> it in the specific ASoC subsystem.
>>>>>>   
>>>>>>>
>>>>>>> Your first version using of_platform_populate() was closer to the mark.  
>>>>>>
>>>>>> The issue was that I need MFD cells for the pinctrl part.  
>>>>>
>>>>> Why can't it be represented in DT?
>>>>
>>>> The pinctrl part has no specific compatible string.
>>>> Not sure that a compatible string for pinctrl can be accepted
>>>> as there is only one pinctrl subnode and no specific reg for this
>>>> subnode.
>>>>
>>>> The DT looks like this:
>>>>     framer@2000000 {
>>>>       compatible = "lantiq,pef2256";
>>>>       reg = <0x2000000 0x100>;
>>>>       ...
>>>>       pinctrl {
>>>>         pef2256_rpa_sypr: rpa-pins {
>>>>           pins = "RPA";
>>>>           function = "SYPR";
>>>>         };
>>>>       };
>>>>
>>>>       pef2256_codec0: codec-0 {
>>>>         compatible = "lantiq,pef2256-codec";
>>>>         #sound-dai-cells = <0>;
>>>>         sound-name-prefix = "PEF2256_0";
>>>>       };
>>>>     };
>>>>
>>>> Krzysztof, is it acceptable to have a compatible string in the pinctrl node ?
>>>
>>> Why wouldn't it be?
>>>
>>> $ git grep ".compatible" -- drivers/pinctrl/
>>>
>>>> In this case, it will looks like this:
>>>>     framer@2000000 {
>>>>       compatible = "lantiq,pef2256";
>>>>       reg = <0x2000000 0x100>;
>>>>       ...
>>>>       pinctrl {
>>>>         compatible = "lantiq,pef2256-pinctrl";
>>
>> If you do not have any resources, there is no point in having separate
>> compatible for separate device node.
> 
> That's a new rule.  Is that documented somewhere?  I'm sure we already
> have device nodes for devices whom only operate on shared resources. 

Let me clarify - no need for separate node for such case, when this is
in general one device and it's sub-block does not look re-usable. For
SoC blocks it is a bit different. For PMICs which pretty often re-use
pieces between different devices, as well.

But here there is not much benefit of separate device node for pinctrl.

Whether rule is new? Dunno, depends, I saw it from reviews from Rob
since long time, e.g.:
https://lore.kernel.org/all/20220902172808.GB52527-robh@kernel.org/

Maybe this is a bit different because of children - pinconf settings?
But I would still look at this as:
1. For a re-usable sub-block: separate device node and compatible is useful,
2. Non-reusable but having a child node only to group children like pin
configuration nodes: no need for compatible.

Best regards,
Krzysztof


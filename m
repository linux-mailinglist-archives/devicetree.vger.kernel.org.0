Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B13A66B21E7
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 11:53:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230367AbjCIKxt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 05:53:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbjCIKxT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 05:53:19 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EDE065055
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 02:53:12 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id g3so5299020eda.1
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 02:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678359191;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2W326W5Kom6WumJ2sDgbc1bNI7W5HdnzMMRfZfFBudg=;
        b=QE7aF981nCmQnC9j2HJmWKBy97b6j3W3MRrDc05t0QOkQwiOvWeJDiapSVYknLIWIZ
         UjwebgOQwUBnEp7XX3VYHKBYUwbj03Jf1w6DiHOOD+ppJ4PkL+yK71wNDV9rawajrE82
         QLKIBXqazRCiqcnoN0b2lxeXLzuDfoOvDI92g8fC/YImlNcQS9OrfEMle3WNB8sWC3YU
         kY7QF1jSyi96V1X/UM6eHzFTwz9y7huVQg2X4rd3ipNaW7uZX8sIr95+GCacyXW7nC+P
         ldybEtynohS/2w/G6negl6tUOq32PshbOAtGRQOgq1nuVpmw7SnblTDBSzwgV+Vztum4
         kzAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678359191;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2W326W5Kom6WumJ2sDgbc1bNI7W5HdnzMMRfZfFBudg=;
        b=5kHLSbTbPochxXIz1hU3ftgHjeQ+5hOA1Bz+39c8BeaOwRlXJrBKtrrX7n9b2H22rc
         Ho01mDd1pRxy3zrSPGryqaO7VL1a4TRdPZ1NX9lPpNo2kVDOMMEywY+Hf2NXwzHqiGw7
         aA3bhskzMrG/H51I2guHUR9aO6lPJ2ubJF6o36M2nrKwkrWJU9UD2g/+Wjw899wAN3qn
         +Sn6zfbbG9kN8skJK5t+LLJgQ660X20OsDJ/eAXOGIv2K3MF6Tvq1+jStU4GMPNus4at
         v/BtrhN8ns0AJAFOOnsjZ2FDof/s0xjop/cdJQQE6KL5tqprGYs/8bZLgni1g98nW8q2
         YcMA==
X-Gm-Message-State: AO0yUKWnDE6excWbJpHBij+823kmCRlN7xNAujjBxT1sV3SRW0HYuEIN
        gnhPJj74Xml0+tamQPHeYr2NEg==
X-Google-Smtp-Source: AK7set++Qb+d1col8SFIeleTl7kGc4yGI1rZ3eJH+j9QgGb3OxTV3FLN7F4yWAV3N9/klJ7En9tH1w==
X-Received: by 2002:a17:906:ae4b:b0:88a:724:244c with SMTP id lf11-20020a170906ae4b00b0088a0724244cmr19845857ejb.71.1678359191389;
        Thu, 09 Mar 2023 02:53:11 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id v14-20020a170906338e00b008e36f9b2308sm8665408eja.43.2023.03.09.02.53.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 02:53:10 -0800 (PST)
Message-ID: <2dc096f5-f5ce-f99b-42ac-0fb24682239a@linaro.org>
Date:   Thu, 9 Mar 2023 10:53:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/4] nvmem: core: allow nvmem_cell_post_process_t
 callbacks to adjust buffer
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Michael Walle <michael@walle.cc>, gregkh@linuxfoundation.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, u-boot@lists.denx.de,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230222172245.6313-1-zajec5@gmail.com>
 <20230222172245.6313-3-zajec5@gmail.com>
 <37f821b8-f681-08e4-d4f1-d37be191ff7f@linaro.org>
 <20230309113211.6321ce3d@xps-13>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230309113211.6321ce3d@xps-13>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 09/03/2023 10:32, Miquel Raynal wrote:
> Hi Srinivas,
> 
> srinivas.kandagatla@linaro.org wrote on Thu, 9 Mar 2023 10:12:24 +0000:
> 
>> On 22/02/2023 17:22, Rafał Miłecki wrote:
>>> @@ -1791,11 +1792,15 @@ ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
>>>    	if (!nvmem)
>>>    		return -EINVAL;
>>>    > +	/* Cells with read_post_process hook may realloc buffer we can't allow here */
>>> +	if (info->read_post_process)
>>> +		return -EINVAL;
>> This should probably go in 1/4 patch. Other than that series looks good to me.
> 
> FYI patch 1/4 is also carried by the nvmem-layouts series, so it's
> probably best to keep these 2 patches separated to simplify the merging.
that is intermediate thing, but Ideally this change belongs to 1/4 
patch, so once I apply these patches then we can always rebase layout 
series on top of nvmem-next

--srini
> 
> Thanks,
> Miquèl

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2ED06E6A3A
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 18:54:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbjDRQyS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 12:54:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230138AbjDRQyR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 12:54:17 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58125D335
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 09:54:03 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-2f55ffdbaedso1637800f8f.2
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 09:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681836842; x=1684428842;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ey5lQr/8K2KSsJSCyNLSxeb/2SqrLz0TU7PqzjXxMzg=;
        b=tv4UQkdxH6jK+rFbo+m7w4WO7NClXUgYHnoFg7YjuRJjbElr06IETeeqmWMSP4JrU3
         gl8OpE0I7ajZyMaBPoMVWlMmAi74pDsx3WuanruP1oqKUOrr3HI3o93eVDDAOViy4Sov
         mTP+YvlO+jzlzsrm4rb0sNzbHr9DTPQNHlQ91DgiifxAIv3rARitwo13j8AoEYX5Cta5
         OVt8p2O3iRs7Tn8v4INJp1Wb9LFC+23uNfWU1LV5BBqzD37096z8HFyv0EKU9Gj//OIH
         Opa1PA33VPFXWMxOD/96zoVcYWtHFbVMuQ4r0BkbIsd0WDUbN3VjNUwSVPpvhQQXwB9l
         5vig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681836842; x=1684428842;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ey5lQr/8K2KSsJSCyNLSxeb/2SqrLz0TU7PqzjXxMzg=;
        b=CCjkFrIDIis6lPvPlH/TGHgqdlYDz1t6qfUDU5HXxnUD7V6z/6jIwlQyUMt1rcDQgY
         RzezOtR8qCz6SGjSUPX86LVn4oeU8ZvCtdlvZQKeH8hvIaDbUHTH8vHcWsCxuYF5zz85
         OgmBR/Q/GOVI/5H4hr9kaHlgDkQbYdYMdUP9QTwwWNaAsH5t9DCHOTg6sBcrLFumvs29
         p8kGmDVyHsFJQ26aRDlrbzMJzeoCDTgG1ZkHFqHww3iKlMW6t8YQu4s8BVbv2rRCGtd8
         BViTJjiVAH6WzAJMF+rfrCOgz3RMir8q1I/iovd8o9FcZtkX70ZE2BVE+qeCxWTmhq1g
         S8Aw==
X-Gm-Message-State: AAQBX9fZGybgAovzk5qZBha+Mqt7Rpd1aZ0LuPQOm5d7eACeuZj5hEgS
        YTXrMxnvRYkulM/Z41roOosBYQ==
X-Google-Smtp-Source: AKy350YRuogy27oxIbW2jcWt5exZazJt8OeEbhyAXPT9UUaolz4oUs70Pjzn7Z64vo3RQ8DMyfhXVQ==
X-Received: by 2002:adf:ea86:0:b0:2f0:2dd5:ee7 with SMTP id s6-20020adfea86000000b002f02dd50ee7mr2455463wrm.36.1681836841751;
        Tue, 18 Apr 2023 09:54:01 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id d15-20020adfef8f000000b002fb9e73d5e5sm3496847wro.60.2023.04.18.09.54.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 09:54:01 -0700 (PDT)
Message-ID: <594e4217-2594-1f8d-130c-c676dcc2b3ad@linaro.org>
Date:   Tue, 18 Apr 2023 17:54:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 14/14] phy: qcom-qmp: Register as a typec switch for
 orientation detection
Content-Language: en-US
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        caleb.connolly@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Wesley Cheng <wcheng@codeaurora.org>
References: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
 <20230413113438.1577658-15-bryan.odonoghue@linaro.org>
 <20230418125723.r7fkxgrs2ncxbb7j@ripper>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230418125723.r7fkxgrs2ncxbb7j@ripper>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2023 13:57, Bjorn Andersson wrote:
>> +	dev_dbg(qmp->dev, "Toggling orientation current %d requested %d\n",
>> +		qmp->orientation, orientation);
>> +
>> +	qmp->orientation = orientation;
>> +
>> +	if (orientation == TYPEC_ORIENTATION_NONE) {
>> +		if (qmp->init_count)
>> +			ret = qmp_combo_dp_power_off(dp_phy);
>> +	} else {
>> +		if (!qmp->init_count)
>> +			ret = qmp_combo_dp_power_on(dp_phy);
>> +	}
> This sequence is crashing my laptop, need some more time to debug the
> actual cause.
> 
> Regards,
> Bjorn
> 

https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-23-04-17-pm8150b-tcpm-qcom-wrapper-typec-mux

This works for me on sm8250 nicely - I can transition from device to 
host and back again in both orientations - I'm about to send out V6 with 
this contained, I haven't tried/enabled it on x13s yet though.

https://git.codelinaro.org/bryan.odonoghue/kernel/-/commit/2c80c630636f1739bde4c1aac2b20940b84daf71

---
bod

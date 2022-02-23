Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AD3F4C0E2B
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 09:24:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238290AbiBWIYc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 03:24:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237396AbiBWIYb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 03:24:31 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B9655A5A4
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 00:24:03 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E76D93FCA2
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 08:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645604641;
        bh=OUH0bTj/LUGqclp4FyWkS6uNhE/OcvDSgnjHRV7vNUM=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=JU82KO191cdrgWJg0J+I4iO3K9Gx66UhqZp8+3CY/Sv5aJlcEnS2LUtq384fzfEYt
         we8C4pXQL6ljFwxrIy7azBYL7MT2oNy061lxsNG7eyvpj1LL2jiZ2gzT5XPqXghtGR
         RGX5HmpdQhrnEUkjGP7NQEEZe2B3H6SciC7dNix+sii7FkOOZ3+C3JFffagKNud/Lo
         gr3Qmxm2jeQ07+eboVA8eSiR4uEt9txcbCJMs4JTx+1jXuD9wMQF/KeBLpC6MgxO2g
         aHsUqyw3uKyL/4kcRjsFkZO4Pg2k0MdZnmlxweK7CRRAmr9JG63oHDF1T11WBA+FKW
         lYLt9XaKAdpvw==
Received: by mail-ed1-f71.google.com with SMTP id dy17-20020a05640231f100b00412897682b4so11466642edb.18
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 00:24:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OUH0bTj/LUGqclp4FyWkS6uNhE/OcvDSgnjHRV7vNUM=;
        b=PLC2VyaChSQEuMKBZbyargHmgO/kR0KqUqmiuD8wywtjwf8Zcrt3qFBnj4rtaxUM+b
         u3q485XqGhUk4LPxhsoVWGSbnradfwiuxp20xaN0lMI5pNgWC6TI6KwK89m4hdtcTSdX
         DkK3abg4S8kjnIzNgUW0p5whBBNFoBt/mzHjh8/+XGHkhaFEQqiOa9N7iRFKJfeBEhwX
         EZUPpetvEmqEfzlFtjLNVRoOUdP2AHBMrhg8otNSndEQqZmBM8RMcdo0cs96yXm4vmNE
         x8cZ0XxKq4xa4mezOnTUmJge+jY0iwynpDbaZQDrEKx7hKVzsK3+6PfDbTBGJQeP+/f0
         yPxQ==
X-Gm-Message-State: AOAM530DMjLlA2c9jPt8iAPGXyOG36c+8ddvPGi5nNVyoj5rD3/5SDzC
        Ei02+pFKnqNiRqH8BUcq0K4WYdelGKrVfogZDsr9skeXRgEyHT+GbXM3wBye/ZlnuU/+BUnJcoB
        CoObWY1gVqtuTu4tm7CnbC/JWOPAuYjPZfdmtOJ4=
X-Received: by 2002:a17:906:3109:b0:6cc:7a1:8db0 with SMTP id 9-20020a170906310900b006cc07a18db0mr22106114ejx.266.1645604640502;
        Wed, 23 Feb 2022 00:24:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzmlOe0uOWGCSaW649hZ3pFA8AEz4z12SvTxoyLOxSd5Mf7R4zHsjAvMUopfEcfA/lfYgjr1A==
X-Received: by 2002:a17:906:3109:b0:6cc:7a1:8db0 with SMTP id 9-20020a170906310900b006cc07a18db0mr22106094ejx.266.1645604640319;
        Wed, 23 Feb 2022 00:24:00 -0800 (PST)
Received: from [192.168.0.125] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id p16sm1162411ejn.33.2022.02.23.00.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 00:23:59 -0800 (PST)
Message-ID: <968cf18e-af5c-0503-79b1-a622938d4e0a@canonical.com>
Date:   Wed, 23 Feb 2022 09:23:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 09/15] scsi: ufs: deprecate 'freq-table-hz' property
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        'Avri Altman' <avri.altman@wdc.com>,
        'Rob Herring' <robh+dt@kernel.org>,
        'Andy Gross' <agross@kernel.org>,
        'Bjorn Andersson' <bjorn.andersson@linaro.org>,
        'Wei Xu' <xuwei5@hisilicon.com>, 'Nishanth Menon' <nm@ti.com>,
        'Vignesh Raghavendra' <vigneshr@ti.com>,
        'Tero Kristo' <kristo@kernel.org>,
        "'James E.J. Bottomley'" <jejb@linux.ibm.com>,
        "'Martin K. Petersen'" <martin.petersen@oracle.com>,
        'Jan Kotas' <jank@cadence.com>, 'Li Wei' <liwei213@huawei.com>,
        'Stanley Chu' <stanley.chu@mediatek.com>,
        'Yaniv Gardi' <ygardi@codeaurora.org>,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-mediatek@lists.infradead.org
References: <20220222145854.358646-1-krzysztof.kozlowski@canonical.com>
 <CGME20220222150007epcas5p22f05e6c8e80a5ad18a9528cd0ead865d@epcas5p2.samsung.com>
 <20220222145854.358646-10-krzysztof.kozlowski@canonical.com>
 <0c8b01d8280b$868abc20$93a03460$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <0c8b01d8280b$868abc20$93a03460$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/02/2022 17:44, Alim Akhtar wrote:
> Hi Krzysztof
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@canonical.com]
>> Sent: Tuesday, February 22, 2022 8:29 PM
>> To: Alim Akhtar <alim.akhtar@samsung.com>; Avri Altman
>> <avri.altman@wdc.com>; Rob Herring <robh+dt@kernel.org>; Krzysztof
>> Kozlowski <krzysztof.kozlowski@canonical.com>; Andy Gross
>> <agross@kernel.org>; Bjorn Andersson <bjorn.andersson@linaro.org>; Wei
>> Xu <xuwei5@hisilicon.com>; Nishanth Menon <nm@ti.com>; Vignesh
>> Raghavendra <vigneshr@ti.com>; Tero Kristo <kristo@kernel.org>; James E.J.
>> Bottomley <jejb@linux.ibm.com>; Martin K. Petersen
>> <martin.petersen@oracle.com>; Jan Kotas <jank@cadence.com>; Li Wei
>> <liwei213@huawei.com>; Stanley Chu <stanley.chu@mediatek.com>; Yaniv
>> Gardi <ygardi@codeaurora.org>; linux-scsi@vger.kernel.org;
>> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
>> msm@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
>> soc@vger.kernel.org; linux-mediatek@lists.infradead.org
>> Subject: [PATCH v2 09/15] scsi: ufs: deprecate 'freq-table-hz' property
>>
>> The 'freq-table-hz' is not correct in DT schema, because '-hz' suffix
> defines
>> uint32 type, not an array.  Therefore deprecate 'freq-table-hz'
>> and use 'freq-table' instead.
>>
> May be once all the dts change migrate to using 'freq-table', just remove
> 'freq-table-hz' from driver.

At some point in the future 'freq-table-hz' parsing could be removed,
but now you have both old and new DTS, so it should stay. Also for DTB
compatibility.


Best regards,
Krzysztof

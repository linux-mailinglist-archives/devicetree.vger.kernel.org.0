Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B11ED74952C
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 08:01:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233129AbjGFGBG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 02:01:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjGFGBF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 02:01:05 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BD061998
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 23:01:02 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51e29964942so445186a12.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 23:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688623261; x=1691215261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7IAKmZHpstgstqx8FAeUwkTSQ0YmTIrDH6WIMSRhwcY=;
        b=I+M6QmPKGCRnEMfzENftg1TPHKCy0ZddPOOkuPSprjcIYMG32ZPZwdNQmIDaz39CqC
         PUuZFYNca1tM8oMzE5yGQ8riLsfiR2GR7weI4pkImN7TkMMOt6Kj/VVloFJosJjRqxWz
         vx+Tanp3cJhgfzpc/VGl3eDl6zuGThgTEwVVAc0/8/VC7hZGdaQEFwMY2KdWmdqPoRoS
         4Z0+W8za3G6mAHq0HbYjaCod6eE4FFVc7SZjnGhnNSc2Rr3P0fENVP72xM8imSj3zBiA
         hidsH7MsPEZy/nSXa7FKuqUQcKb4UiGgeR+/3K1ITTql1bF4nHma57iBD3S4yLvbqNIu
         Voeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688623261; x=1691215261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7IAKmZHpstgstqx8FAeUwkTSQ0YmTIrDH6WIMSRhwcY=;
        b=lCfqwioOphSq5T+e1rGy4PAuY+baw2CqKVQgqtxo7kZQNuBqYJsj5imZPM06ApsMHf
         GpCgx1fvHe6CI67EIoIiqgdZWbDRCpPGzJj6TdA/sTD56oEhnsPllliHN4iF0ZFBDx3r
         StZlfJhFXnwvLnOX07WfPfqkNjYEtATJVLSWIPIkWB6aGgxWlKw+Bbxdo26KykEb9Z2+
         07m0cPOXj6gZ6RPulCuqOeVMMoXGByqD3WPrx7YTHEp/+m/GDhRMMJQb8Ir1rtnllPKt
         A3vOViJYS0vIUNz5iFIeAL4vXa9O8TWirHpf5U3UmXjCHDMkTjpvWotVwfHtea9svCaV
         0A7w==
X-Gm-Message-State: ABy/qLY6MLHJVhu7sFLvbHGBUS31iw1T6h0WMIovkIC3RFIkmuf/7eQ7
        xV324TG1VUnpK5Ujw0dOyrky5A==
X-Google-Smtp-Source: APBJJlGxMHI90Bj2KGx+EfXktGS5VOrAEQgqjBzOj+qrgtBRqIHvMlZpEqUF1J65EJCW7Rgcnxk+4A==
X-Received: by 2002:aa7:d70f:0:b0:51e:10d8:e011 with SMTP id t15-20020aa7d70f000000b0051e10d8e011mr815168edq.24.1688623260799;
        Wed, 05 Jul 2023 23:01:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id m18-20020aa7d352000000b0051e27ebb1b3sm343191edr.34.2023.07.05.23.00.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 23:01:00 -0700 (PDT)
Message-ID: <07f88065-b9ca-5233-4048-5e61e1cdbe0c@linaro.org>
Date:   Thu, 6 Jul 2023 08:00:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [External] Re: [PATCH v3 4/4] dt-bindings: firmware: Document
 ffitbl binding
To:     =?UTF-8?B?6L+Q6L6J5bSU?= <cuiyunhui@bytedance.com>,
        Conor Dooley <conor@kernel.org>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
Cc:     sunilvl@ventanamicro.com, ardb@kernel.org, palmer@dabbelt.com,
        paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
        linux-riscv@lists.infradead.org, rminnich@gmail.com,
        mark.rutland@arm.com, lpieralisi@kernel.org, rafael@kernel.org,
        lenb@kernel.org, jdelvare@suse.com, yc.hung@mediatek.com,
        angelogioacchino.delregno@collabora.com,
        allen-kh.cheng@mediatek.com, pierre-louis.bossart@linux.intel.com,
        tinghan.shen@mediatek.com, linux-kernel@vger.kernel.org,
        linux-acpi@vger.kernel.org, geshijian@bytedance.com,
        weidong.wd@bytedance.com
References: <20230705114251.661-1-cuiyunhui@bytedance.com>
 <20230705114251.661-5-cuiyunhui@bytedance.com>
 <20230705-oblivious-unstuffed-8e028a5b243c@spud>
 <CAEEQ3wmG1OiE3GFqQp9SP+oKUbTfuTPx=rNGd-sjKsW7vv3bew@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAEEQ3wmG1OiE3GFqQp9SP+oKUbTfuTPx=rNGd-sjKsW7vv3bew@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2023 05:43, 运辉崔 wrote:
> Hi Conor,
> 
> Added dts Maintainers,
> 
> On Wed, Jul 5, 2023 at 11:07 PM Conor Dooley <conor@kernel.org> wrote:
>>
>> Hey,
>>
>> On Wed, Jul 05, 2023 at 07:42:51PM +0800, Yunhui Cui wrote:
>>> Add the description for ffitbl subnode.
>>>
>>> Signed-off-by: Yunhui Cui <cuiyunhui@bytedance.com>
>>> ---
>>>  .../devicetree/bindings/firmware/ffitbl.txt   | 27 +++++++++++++++++++
>>>  MAINTAINERS                                   |  1 +
>>>  2 files changed, 28 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/firmware/ffitbl.txt
>>>
>>> diff --git a/Documentation/devicetree/bindings/firmware/ffitbl.txt b/Documentation/devicetree/bindings/firmware/ffitbl.txt
>>> new file mode 100644
>>> index 000000000000..c42368626199
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/firmware/ffitbl.txt
>>
>> Firstly, new dt-bindings need to be done in yaml, not in text form.
>> Secondly, you didn't re-run get_maintainer.pl after adding this binding,
>> so you have not CCed any of the other dt-binding maintainers nor the
>> devicetree mailing list.
> 
> Re-run get_maintainer.pl and added maintainers into the maillist.


This does not work like this.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

You missed at least DT list (maybe more), so this won't be tested by our
tools. Performing review on untested code might be a waste of time, thus
I will skip this patch entirely till you follow the process allowing the
patch to be tested.

Please kindly resend and include all necessary To/Cc entries.

> emm.. There is some *txt in
> Documentation/devicetree/bindings/firmware/, isn't it?

And what about it? Do you claim they were added recently?

Best regards,
Krzysztof


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D6CE54D608
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:25:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350754AbiFPAYP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:24:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346779AbiFPAXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:23:34 -0400
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8F9A1EEC3
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1655339013; x=1686875013;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=zZ9XlC7/d8yGFVGGImcAjZu6pedLsVXV7Ze6hqnSWA8=;
  b=X8/IiGAh4kkPI0ZuBA4TmZvvEWmH5cWty4tZiRB3HWYivKY0rvgHtP37
   eoJNhwdLqFITRqgIS2KT7V9cUZO73Fxx9wXfWTP2OvcYHgylqpcdnuVOU
   SIPuwg+H69c/QPAep8J5BHPpPZIBkb1w4msWyjOifzzH6nroyJqga6r9s
   soTlTf/9iynRMRDa9Zz/EOKBLzJtm5gZ0JQI4ZV4vjPoD9mvCxDrMGQkC
   rzsgutHyAsunQNilZ+tyvtC7bABnNWzlB5yxB3zz8NUJHuRqPOYFTk/5N
   JllZV2c/eYbu6qSkdvFAdFgdupiQXQHWC8LQRtG6Ooozn4gDtYqGxu62/
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,302,1647273600"; 
   d="scan'208";a="204038060"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 16 Jun 2022 08:23:33 +0800
IronPort-SDR: SjZ9T5B6fPe9XHQkIi3l1MF1q0XB/6wpVzlfrspoUKjZzvHkKUVvlGFIlNtLOTGJAy42u/BTQ2
 LrqtCRebAGfYLoj3qYcY9BRAnbDd5Z/ULAfC2u7QC6H4ZvFCERU7iqloK+EccvOvpGfCBMRyTF
 dvjj7F0WVCNix4Axd9t3aEl822ptWvoSPwmX7mtcM2SKQcllD2rh14xh+bX2/fjvYmhrngCmB2
 tcVDdN3ETOkbyXnbE6M7sdwydU86GIQ6C3F9KE5IjfqQ+HQcEp+8PCfhFl0ONDUX+39m5oTvhC
 ryV5SPWETlNFvfhAf0f07v0F
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Jun 2022 16:41:56 -0700
IronPort-SDR: U0xUsj3Fd4iVLIHmIfWic2z7Ahdz9uwLZH5712b3DzpQu4XjVnfoHY+DtSb8/x8b+k8ta3OzKO
 zZWrLY4F0frvcPFVfA0latGd1Gio8NkzQucATeJEflib8m+Ff6bO6RZTXe1AZkZLB5unJ1tGuf
 SR+2MT+hifi6PWY0wkISyxwTXV3m5lyF5ZrHudQH4UnlzqOM66aK9yk2uHbn2c+KCwkRcF17jm
 WQKwHP6mFanfIiKn4eYqly3csY3mvVkdAX5rZDiYQaFtXC4jhKsrmA29YmJ6/NqEeM7uFZ8570
 j0w=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Jun 2022 17:23:32 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4LNjZW5Qlyz1SHwl
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:23:31 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1655339010; x=1657931011; bh=zZ9XlC7/d8yGFVGGImcAjZu6pedLsVXV7Ze
        6hqnSWA8=; b=Amo75OZs0o1yTEBKgeeBYg0G5I7yGoxP6rFGWQNZmeoMZNxRoe1
        rEnOV7b/t/804MCLOxoI5gkVrPF6yI3HV9wlp/LrhSeSHwbwtzD6qK2EXAW03ttx
        di9IjM6jkDhdY1N3XHYAfhJ7Cj3I7QCP2S5S4Q5aEM3ITq9bJzuvzs7tUIy3qUKa
        C4RoGpNGvu8tJWZmyku3zuvC3oQdUre9ZKrxdnS30m7HaYJSE4xUSCdsuvMrEsQP
        z+nukMOL9wQYgUBMHOUS6CKtNADkzbddLqfMkSMnXuwJ+gwf2I/+dh92gA9LkIA2
        f4hs/XNMBAtOVgY9g1bfB3eRTp7DZKQypeQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id JM2JKtlHr-0B for <devicetree@vger.kernel.org>;
        Wed, 15 Jun 2022 17:23:30 -0700 (PDT)
Received: from [10.89.84.185] (c02drav6md6t.dhcp.fujisawa.hgst.com [10.89.84.185])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4LNjZT1QXqz1Rvlc;
        Wed, 15 Jun 2022 17:23:29 -0700 (PDT)
Message-ID: <0dcebae2-5e4e-a0d3-181d-37bb9b40d564@opensource.wdc.com>
Date:   Thu, 16 Jun 2022 09:23:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.10.0
Subject: Re: [PATCH v4 07/23] ata: libahci_platform: Convert to using devm
 bulk clocks API
Content-Language: en-US
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.de>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220610081801.11854-1-Sergey.Semin@baikalelectronics.ru>
 <20220610081801.11854-8-Sergey.Semin@baikalelectronics.ru>
 <3bf20887-6e2f-41f4-e4ec-5c2278f6cb18@opensource.wdc.com>
 <20220615204509.siz54h4vbgvb3zkm@mobilestation>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220615204509.siz54h4vbgvb3zkm@mobilestation>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022/06/16 5:45, Serge Semin wrote:
[...]
>>> +		hpriv->clks = devm_kzalloc(dev, sizeof(*hpriv->clks), GFP_KERNEL);
>>> +		if (!hpriv->clks) {
>>> +			rc = -ENOMEM;
>>> +			goto err_out;
>>> +		}
>>> +		hpriv->clks->clk = devm_clk_get_optional(dev, NULL);
> 
>>> +		if (IS_ERR(hpriv->clks->clk)) {
>>> +			rc = PTR_ERR(hpriv->clks->clk);
>>> +			goto err_out;
>>> +		} else if (hpriv->clks->clk) {
>>
>> Nit: the else is not needed here.
> 
> Well, it depends on what you see behind it. I see many reasons to keep
> it and only one tiny reason to drop it. Keeping it will improve the
> code readability and maintainability like having a more natural
> execution flow representation, thus clearer read-flow (else part as
> exception to the if part), less modifications should the goto part is
> changed/removed, a more exact program flow representation can be used
> by the compiler for some internal optimizations, it's one line shorter
> than the case we no 'else' here. On the other hand indeed we can drop
> it since if the conditional statement is true, the code afterwards
> won't be executed due to the goto operator. But as I see it dropping
> the else operator won't improve anything, but vise-versa will worsen
> the code instead. So if I get to miss something please justify why you
> want it being dropped, otherwise I would rather preserve it.

An else after a goto or return is never necessary and in my opinion makes the
code harder to read. I am not interested in debating this in general anyway. For
this particular case, the code would be:

		hpriv->clks->clk = devm_clk_get_optional(dev, NULL);
		if (IS_ERR(hpriv->clks->clk)) {
			/* Error path */
			rc = PTR_ERR(hpriv->clks->clk);
			goto err_out;
		}

		/* Normal path */
		if (hpriv->clks->clk) {
			...
		}

Which in my opinion is a lot easier to understand compared to having to parse
the if/else if and figure out which case in that sequence is normal vs error.

As noted, this is a nit. If you really insist, keep that else if.

> 
> -Sergey
> 
>>
>>> +			hpriv->clks->id = __clk_get_name(hpriv->clks->clk);
>>> +			hpriv->n_clks = 1;
>>>  		}
>>> -		hpriv->clks[i] = clk;
>>>  	}
>>>  
>>>  	hpriv->ahci_regulator = devm_regulator_get(dev, "ahci");
>>
>>
>> -- 
>> Damien Le Moal
>> Western Digital Research


-- 
Damien Le Moal
Western Digital Research

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3302A576440
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 17:16:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232951AbiGOPQn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 11:16:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiGOPQm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 11:16:42 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4887222B6
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 08:16:41 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id g1so6673642edb.12
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 08:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :from:in-reply-to:content-transfer-encoding;
        bh=fxrngYslocEAYjnudmwdr0+sA76nQg19efIXvVIXHtU=;
        b=CW4HwzF1STnLJOr7SULB7sE4TFivBQ9d1Xq1frUfyzeNuxCRz0L/2WLf59mVR0Wcah
         3DCYK63YflMxit+KmMk/fkULS2EVvDyGnnf4S33C9EYUug2gek5S/sPhN7XlqfrePuEs
         AqgcHNydWetbsQbAk14nG2ACkF37apsbjVR914Q5wFKEwtIww3IhLX4kTOrWoXsUx+q4
         Wn3IU4CSGh6i/9xhLkaWxMgIP6ci1QIcev6jIehPbkPiQTv/XONR+1+lFFDXKvfo442j
         JFFjiDFtv+5+bWZgd0f/n05ahjUIcOyGOMYJ7Kjdw1SkJ0rS4PswsD+bid2fcdg+vHRf
         9akg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fxrngYslocEAYjnudmwdr0+sA76nQg19efIXvVIXHtU=;
        b=ntwWR7nGNIO0vvDtNSH/lViEp+Or+qqHFeqvbRIophEDFGMo+ZC0TDJZxDy1X6XQWZ
         uLJLD5ErFk0hMw97lW5cdlx+w8wCFioSFkSYL5A1eyMjib5nC4xL09+ybSOSIt6KbpvV
         svDh6JHR5Xg0DkYv/t/BM8fEhNAHAQ8BPxH0c3xZqyLt/2bgEtcmU77EoUaphx1L0KE/
         fWtXGMA1zaOrvgDPrVcZPPOfXk/UBRfST/dmpAkco3WfvHbouWydxlbAkjcrIgCSRkUG
         XsIQFx02xFIWEC02Fi7k3/I+gEPkpOGnMbVKKR95PmfRFWi4nRe7yxt058z6RO9RrjgY
         ApWw==
X-Gm-Message-State: AJIora+BzAzoQhSZVi7p+Ugfh3b3RwMNibSqToizoHJVZY0+a+9S6+0K
        hlT+ymbyLfOvJn8Q0ZE5bfY=
X-Google-Smtp-Source: AGRyM1v3DjCDhE8Dl8QECTnhdmq0jhKzNAJCLNZMebUadsiy+Q/S/j9nOTi7f3lC4zxdb+U51uL94g==
X-Received: by 2002:a05:6402:1455:b0:43a:77bb:af0f with SMTP id d21-20020a056402145500b0043a77bbaf0fmr19486905edx.301.1657898200419;
        Fri, 15 Jul 2022 08:16:40 -0700 (PDT)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id l22-20020a056402231600b0043a1255bc68sm2920902eda.94.2022.07.15.08.16.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 08:16:40 -0700 (PDT)
Message-ID: <2fff1d95-c257-2756-ff63-5efe7b3c528c@gmail.com>
Date:   Fri, 15 Jul 2022 17:16:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101
 Thunderbird/96.0
Subject: Re: of_platform_populate() for address-less nodes (OF: Bad cell count
 for ...)
To:     Rob Herring <robh@kernel.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Ansuel Smith <ansuelsmth@gmail.com>
References: <f4d9a3e1-bb7f-353f-44e1-501fd7985b37@gmail.com>
 <CAL_Jsq+o27gCfzJH39ct8rRSY2nGgLpzNuw71aqBHQK62iAf+A@mail.gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <CAL_Jsq+o27gCfzJH39ct8rRSY2nGgLpzNuw71aqBHQK62iAf+A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15.07.2022 17:02, Rob Herring wrote:
> On Fri, Jul 15, 2022 at 5:59 AM Rafał Miłecki <zajec5@gmail.com> wrote:
>>
>> I need Linux to support MTD partitions drivers. They should get probed
>> for MTD partitions, access it, do their stuff. Random example:
>>
>> partitions {
>>          compatible = "fixed-partitions";
>>          #address-cells = <1>;
>>          #size-cells = <1>;
>>
>>          partition@0 {
>>                  compatible = "u-boot,bootloader";
>>                  label = "loader";
>>                  reg = <0x0 0x100000>;
>>          };
>>
>>          partition@100000 {
>>                  compatible = "u-boot,env";
>>                  label = "image";
>>                  reg = <0x100000 0x100000>;
>>          };
>> };
>>
>> (please don't confuse them with parsers which are MTD internals)
>>
>>
>> To support that I added of_platform_populate() calls, see commit
>> bcdf0315a61a2 ("mtd: call of_platform_populate() for MTD partitions"):
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bcdf0315a61a29eb753a607d3a85a4032de72d94
>>
>>
>> The problem I just noticed is it triggers errors like:
>> OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0/partitions
>>
>> It comes from (forward-trace):
>> of_platform_populate()
>> of_platform_bus_create()
>> of_platform_device_create_pdata()
>> of_device_alloc()
>> of_address_to_resource()
>> of_address_to_resource()
>> __of_address_to_resource()
>> of_translate_address()
>> __of_translate_address()
>> OF_CHECK_COUNTS()
>> pr_err()
>>
>>
>> It's caused by "partitions" node having 1 address cell and 0 size cells.
>> It's a consequence of inheriting sizes from NAND CS:
>>
>> nand-controller@1800 {
>>          ...
>>
>>          #address-cells = <1>;
>>          #size-cells = <0>;
>>
>>          nand@0 {
>>                  compatible = "brcm,nandcs";
>>                  reg = <0>;
>>
>>                  partitions {
>>                          ...
>>                  };
>>          };
>> };
>>
>>
>> Is that something that can / should be fixed in OF implementation?
>>
>> I don't think I should assign sizes to "partitions" node as it doesn't
>> use "reg" at all. All "reg" in "partitions" subnodes contain flash
>> relative offsets and they should not be translated.
> 
> Yes, you should. The parent node of a node with 'reg' must have
> #address-cells and #size-cells. Simple as that.

For "parent node of a node with 'reg'" it's obvious. We have a different
case here though.

Please take one more look. Node named "partitions" does not have "reg".
That is what I don't have #foo-cells in the nand@0.

A complete example:

nand-controller@1800 {
	...

	#address-cells = <1>;
	#size-cells = <0>;

	nand@0 {
		compatible = "brcm,nandcs";
		reg = <0>;

		partitions {
			compatible = "fixed-partitions";
			#address-cells = <1>;
			#size-cells = <1>;

			partition@0 {
				compatible = "u-boot,bootloader";
				label = "loader";
				reg = <0x0 0x100000>;
			};

			partition@100000 {
				compatible = "u-boot,env";
				label = "image";
				reg = <0x100000 0x100000>;
			};
		};
	};
};



> It is 'ranges' that determines if addresses are translatable or not.


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA7C85B316B
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 10:15:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231592AbiIIIM7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 04:12:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231468AbiIIIMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 04:12:54 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A19E111CD7F
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 01:12:53 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id t7so1400416wrm.10
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 01:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=pZAEsbCH2NRVtB0Va/tyR0DqhYtH4yToN6sJwtAyPyc=;
        b=BBPJp8KmZvVNnfGbDDK5J/QhxG8NL4IV5p3jOI9oPGpUF1eDz8O4n487UGKgIbOnwh
         sTlp6HyXug7uTizn+wr0Gy6bBqj84cZSa/ISC2AdYxDCUpeLiUlhgmLXjQLxj1EFuZRV
         f5u68ivyeT1UqT1tNpjyZcgJQFzXiZSaDKip6BrtztDQBWRGoMdbvyPrZkpZE86oJsGE
         qD4Hee1Q4H44UUcEVdxKN/FOPHF9qSCTitgbiuLGztPxFDGm3OJklJEMTPYrb9VLNtrR
         6chaUZNDFRxuXrLSz1dvx7HbUXOtYzHxzdXiGWy6hLCAC441CfBIdWFQ5E1sm+bjy4Jk
         Brgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=pZAEsbCH2NRVtB0Va/tyR0DqhYtH4yToN6sJwtAyPyc=;
        b=gHPlt/gdVljyq2l6dFo7cEz6nj5pBhfWTYBuyCJsv3Tgkpq7fjDp7tJXAXQaVQWPXX
         xIpd2ht257z1+W7taee9/6+Hnus7kj27jxjGHx6huvNPwsN47G1/oEVbhGEJkS63qjXI
         pt4U79EYolskZBXMZ81xFJl6Wh7V5D/gAbbG7EQAbprAdrp2bfntTu3H5zMibpxDGeiD
         0xcOz6aAwtvvkjw2KUgXWXSAtqQIjcp522OOuSApNwppyK5qwWeOVlvIgS3oqDOye5Qa
         /o9+ozs6GpqvzkBPmFZZKcBsbYQ74KD1sQOBGqlZZtU64bsTs3SNcILMvxQZsX95y4dK
         K2dQ==
X-Gm-Message-State: ACgBeo28q5FG/tiHM/w8c2o1IHKsiCexwtXzTGEAlkk4C3z1U1LW/bR5
        OenQ9rr1v5SxldH8pfFkFSFQrg==
X-Google-Smtp-Source: AA6agR646Vsj3LapySOr+tE/u73kxjjd4Ase1LGIC+dmomAH0bSosMyMjkU387zhpmNcusrMuiL4mw==
X-Received: by 2002:adf:d1c2:0:b0:226:fa44:bab7 with SMTP id b2-20020adfd1c2000000b00226fa44bab7mr7213129wrd.195.1662711172215;
        Fri, 09 Sep 2022 01:12:52 -0700 (PDT)
Received: from [192.168.86.238] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id r13-20020a056000014d00b00228dd80d78asm1223474wrx.86.2022.09.09.01.12.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 01:12:51 -0700 (PDT)
Message-ID: <546cb124-eb74-ff8d-e0df-12a074b50e1b@linaro.org>
Date:   Fri, 9 Sep 2022 09:12:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 03/20] nvmem: core: add an index parameter to the cell
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>
References: <20220901221857.2600340-1-michael@walle.cc>
 <20220901221857.2600340-4-michael@walle.cc>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20220901221857.2600340-4-michael@walle.cc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 01/09/2022 23:18, Michael Walle wrote:
> +	ret = of_parse_phandle_with_optional_args(np, "nvmem-cells",
> +						  "#nvmem-cell-cells",
> +						  index, &cell_spec);
where is the bindings for this new #nvmem-cell-cells property?


--srini

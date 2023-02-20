Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87E4C69D2EB
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 19:43:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232555AbjBTSn5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 13:43:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231496AbjBTSn5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 13:43:57 -0500
Received: from imap4.hz.codethink.co.uk (imap4.hz.codethink.co.uk [188.40.203.114])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F9D8CDEA
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 10:43:46 -0800 (PST)
Received: from [167.98.27.226] (helo=[10.35.4.184])
        by imap4.hz.codethink.co.uk with esmtpsa  (Exim 4.94.2 #2 (Debian))
        id 1pUB8X-0067cf-QG; Mon, 20 Feb 2023 18:43:41 +0000
Message-ID: <ff11ad0f-7ea0-1dd3-32ce-5a28c8816397@codethink.co.uk>
Date:   Mon, 20 Feb 2023 18:43:40 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v4 6/8] RISC-V: Use Zicboz in clear_page when available
Content-Language: en-GB
To:     Andrew Jones <ajones@ventanamicro.com>
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-7-ajones@ventanamicro.com>
 <4a25cf89-bcf0-e78c-a8ab-7ba0c4f8e2bf@codethink.co.uk>
 <b348f0cc-4868-2924-9935-00ec18b36da9@codethink.co.uk>
 <20230217122943.24caosketyvfcc4f@orel>
From:   Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
In-Reply-To: <20230217122943.24caosketyvfcc4f@orel>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/02/2023 12:29, Andrew Jones wrote:
> On Fri, Feb 17, 2023 at 10:50:07AM +0000, Ben Dooks wrote:
>> On 17/02/2023 10:18, Ben Dooks wrote:
>>> On 09/02/2023 15:26, Andrew Jones wrote:
>

[snip]

> Hi Ben,
> 
> I'll be sending a new version where I don't touch vendor-id anymore, but
> rather break errata_id into two parts: id and application-data.

Do you have an idea when v5 will be out, if it is this week I will
hold-off our internal tree rebase to change to v5.

Thanks!

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html


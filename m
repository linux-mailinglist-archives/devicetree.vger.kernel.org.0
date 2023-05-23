Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4855F70DD83
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 15:33:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236815AbjEWNdC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 09:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236864AbjEWNdA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 09:33:00 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B3D6121
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 06:32:56 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8008886005;
        Tue, 23 May 2023 15:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684848774;
        bh=az4DhEYpqXyE0iQnJgH18ExeA7N1MMg9+CwkYlMMVYQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=bF6mLbURaBRKEANaQSA21a34oo6v6gfleyWCf+FaNv9w+dog/AODEYyntD/F6w1/C
         HX5aisxwdsAPcdCqsfVvSzTjo0FJjFnV/6Lt1zufe1MOlB0TZiH9RjLsr4rj+1VjB0
         NLT/ahinle4QBHs8/v21zmtO/TMDnezz4RkF92MnvqD41Lw74QrcI6KzLmTzLxTcYB
         8pBQhvpca6dKx8SJkxaznHTJt4glz23X+MK38vOBTZPpLbnbA8mdW0EMkRdM0mBrzy
         a3LalmbF4GhYp14wPZKYCtZ4+DaDgIYJcbbXJfJkJcYTNxs4quc0nh3SZ1SFo2kWTQ
         qDL1rXpOP+DFA==
Message-ID: <a9e2e19f-e9df-81e3-4608-71beed85852f@denx.de>
Date:   Tue, 23 May 2023 14:57:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 5/5] soc: imx: imx6sx-gpr: Introduce a GPR driver
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-5-festevam@gmail.com>
 <b479bae2-1d0a-8cd1-0f80-74ecb483605c@denx.de>
 <CAOMZO5BtPUu9CfxJO-mScB4OYeN3g7HxKF=D636wFSUJ5HMsoQ@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <CAOMZO5BtPUu9CfxJO-mScB4OYeN3g7HxKF=D636wFSUJ5HMsoQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/23/23 13:44, Fabio Estevam wrote:
> On Mon, May 22, 2023 at 11:57 PM Marek Vasut <marex@denx.de> wrote:
> 
>> I feel inclined to ask -- do you think this could be something which
>> could be added to core code ? It seems very generic.
>>
>> Thoughts ?
> 
> Yes, I think I can work on a more generic solution after this series gets in.
> 
> Just wanted to avoid it as a hard requirement right now, if you agree.

It might be simple to add this functionality to the core, could you 
please take a quick look ?

Also, I might be wrong, so let's see what others think too.

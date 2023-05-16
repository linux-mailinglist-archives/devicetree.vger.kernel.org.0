Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6AB9704C67
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 13:33:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232992AbjEPLdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 07:33:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232981AbjEPLdC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 07:33:02 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C86C18E
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:33:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0FA1563689
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 11:33:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42FFCC433EF;
        Tue, 16 May 2023 11:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684236779;
        bh=0PS6ardThJaJ++J5auE9WG9aAgJdzGh1BCUH6jcAVNQ=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=kBETNDWs9n5PcMdAz6V9UhahqvscRjmjAYv3WeIg5IB0cZ2x5JLVn6I3bz3LROUSY
         t+jql4A54lk/+sZ9UUVbY3KiX3oPEbRwB72nL4sYNd2p6cGUc3q65OWVB/AvLfiLLs
         3kvUZnxWq9zmRbTM6stpyTVcDoO25DvXluIySm5hEOz6M1jfzKMc+Z5A2e9/VLubV4
         a8ASLjzPQNXfH4xc7MuSMytvwtnBKQCmTx4RH9AE04yrcfT8i7OBxaY5tXTl0n81ic
         NfU19G3xQGuy+ZP/QutLxcvdGqWodVt4m6vYB/m/TSS5H75uaH84R2s1U5b4z3bcFq
         Iyv7jcc81cneQ==
Message-ID: <77229d68-18a3-ce8a-654c-20c7ba9030ea@kernel.org>
Date:   Tue, 16 May 2023 13:32:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: add panel-mipi-dsi-bringup DT schema
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     =?UTF-8?B?UGF1bG8gUGF2YcSNacSH?= <pavacic.p@gmail.com>,
        neil.armstrong@linaro.org, sam@ravnborg.org, conor+dt@kernel.org
Cc:     devicetree@vger.kernel.org
References: <CAO9szn3t-giVipb5oH_3mzQZbnXbDqqz0WEg8uAmo-1W2uKzFg@mail.gmail.com>
 <27d5081b-a251-5512-a077-a9905b29d7f2@kernel.org>
Content-Language: en-US
In-Reply-To: <27d5081b-a251-5512-a077-a9905b29d7f2@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-9.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2023 13:04, Krzysztof Kozlowski wrote:
> On 16/05/2023 12:27, Paulo Pavačić wrote:
>> From 5a202ed7c7aa3433e348c5fed176defab1af1fae Mon Sep 17 00:00:00 2001
>> From: =?UTF-8?q?Paulo=20Pava=C4=8Di=C4=87?= <paulo.pavacic@zenitel.com>
>> Date: Tue, 16 May 2023 12:17:38 +0200
>> Subject: [PATCH] dt-bindings: add panel-mipi-dsi-bringup DT schema
>> MIME-Version: 1.0
>> Content-Type: text/plain; charset=UTF-8
>> Content-Transfer-Encoding: 8bit
> 
> Your patch/email header looks corrupted. Please use standard tools like
> git format-patch or b4.
> 

Also there are few other issues - missing checkpatch and testing
(dt_bindings_check).

https://patchwork.ozlabs.org/project/devicetree-bindings/patch/CAO9szn3t-giVipb5oH_3mzQZbnXbDqqz0WEg8uAmo-1W2uKzFg@mail.gmail.com/

Please fix everything, prepare v2 with proper changelog, run all the
tools and send to appropriate folks.

Best regards,
Krzysztof


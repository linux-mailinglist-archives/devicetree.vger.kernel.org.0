Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F2B65E7995
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 13:29:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229624AbiIWL3j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 07:29:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230079AbiIWL3i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 07:29:38 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AB8BDFDF
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 04:29:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 1BC1DB824C6
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 11:29:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE9A6C433D6;
        Fri, 23 Sep 2022 11:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1663932573;
        bh=EUhtPsK1oa53uZlbIQNEua2GjoS+rom8uwFS6j9odsA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=fT1kJH2NI/3/KeDsp4l7mXoH5IMI245HV7HLznGnGmttkGSyvaPFr/9v0nlQG/tKg
         gHq4/o4n3lNFInALslrktrL51cfl1B0RPpb+8J2BnwbEUBDnzLG7U1SGdOwlnsL1gg
         T5tjoff2fj+wtLHLMQhXMmR16+1ZQGW6gA5z56n1oWeMri71B/5QP/nF8v6RUeB8dG
         hijrsmcdXcil7rfMGNPAHgjkUb9mwpF1xrmobc/Pf/YKe4lxXJ0JXrxJ9uzLNXCz6P
         D45cxwyzc/YUJDhEAiOORBs+0SbyaH5txwRLSy0D5k/T8Kbhl0NnRN/bM+Bl0/eNkv
         HTf2eDwDiFVlw==
Message-ID: <cd4cb9f2-b9c2-afc5-fa01-4a6ec946aef4@kernel.org>
Date:   Fri, 23 Sep 2022 13:29:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/2] dt-bindings: PCI: ti,j721e-pci-*: Add missing
 interrupt properties
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, vigneshr@ti.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220922204434.74764-1-mranostay@ti.com>
 <20220922204434.74764-3-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220922204434.74764-3-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 22:44, Matt Ranostay wrote:
> Both interrupts, and interrupt names weren't defined in both EP and host
> yaml. Also define the only possible interrupt-name as link_state, and
> maxItems of interrupts to one.
> 
> This patch resolves the following warning:
> 
> arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: pcie-ep@2910000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
>         From schema Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml

Use scripts/get_maintainers.pl to CC all maintainers and relevant
mailing lists.

Best regards,
Krzysztof


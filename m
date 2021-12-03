Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F36A0467DBF
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 20:05:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244645AbhLCTIz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 14:08:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238521AbhLCTIw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 14:08:52 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CAEDC061751
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 11:05:28 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 51FA0B826AB
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 19:05:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73460C53FCD;
        Fri,  3 Dec 2021 19:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638558325;
        bh=UdcnMsVlMBujqaN5bYylt2Wk72+1iY6/OO5n9DF0/hU=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=uUVBTcVrBudMsVknoiA5C9CSPOGMCpkeIDrpUYXY0KY7ojF5/4++BFsS0iFB/kNfq
         Hc7wGhj91jBrRX5uCB6rncr+S7DciXyIVIbpElbKH7TvYA/gcrUU4i5CQM7iWSL6sa
         9Tb9Gg5v8eQhhNIr2F7pfy3OUThOkc3+QtUdcnLxcS+rhI1nIskcyyr7/ZogNXf2IA
         4o+rWULpMVjUSbH0ec7a6Z3+Lz/Nolg97/hptSMbJoN2h9fqiMaUhA8SUJ3wooCX5K
         i2+bicp/fdOov32CPKU4uxKluY/XFkB8tnl/8lUNrKzwP5e4SFSN3F5+ULn/754YeH
         OjDvzJXV+JADA==
Subject: Re: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document
 "cdns,qspi-nor-ver-00-10"
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, p.yadav@ti.com
References: <20211203181714.3138611-1-dinguyen@kernel.org>
 <YapfkGNetHhA0Bws@sirena.org.uk>
From:   Dinh Nguyen <dinguyen@kernel.org>
Message-ID: <1907d1ca-1ce9-6a49-6820-f3f61967341d@kernel.org>
Date:   Fri, 3 Dec 2021 13:05:24 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YapfkGNetHhA0Bws@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/3/21 12:18 PM, Mark Brown wrote:
> On Fri, Dec 03, 2021 at 12:17:12PM -0600, Dinh Nguyen wrote:
>> The QSPI controller on Intel's SoCFPGA platform does not implement the
>> CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
>> results in a crash.
> 
> This is the third copy of this you've sent today with no differences
> I've spotted between them - what's the story here?
> 

Apologies, I didn't get a confirmation that the 1st 2 copies went 
through. Please ignore the 1st and 2nd copies.

Sorry for the noise!

Dinh

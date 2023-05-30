Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DFEC7160EB
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 15:01:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232481AbjE3NBE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 09:01:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232419AbjE3NBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 09:01:00 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87D15E51
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 06:00:38 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2E521846B2;
        Tue, 30 May 2023 15:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1685451635;
        bh=AayDHq3BhFJLkahY5dB78oWM4/0UK+Wh4Au50Z8d8hs=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=MR87sdfFe93by/ZM2IM6968jiK7q37C8AIfpAia2ofeBDX1cBRHfACKpN1zS6oYjZ
         /qrqJ1JSSZ1wontRWP0zv9cesOozmkSbjQ8nUSwhdCDALJJmM0kKeoNFgnTcDp7UkX
         usKXhdaEqT8sEB8ITty0w1oERCWAL6mLDtQEwSpLQ/iWQCdaHE07AAAjRlxkikJE4P
         S2p4r2sGbsTXdyJPcPQBDjK+yz/9SdfrQU51xv8mqF+U+uihgr/QLBND0Ej3Pnii6v
         oOG7Mvs/CDA52YXLhyeOBHmgWcYcf4+5noIBWogRLbERJSkFIjQ8S8ksrWNRSLTov5
         KvW5vfBiyPCbA==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Tue, 30 May 2023 10:00:34 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, shawnguo@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: pfuze100.yaml: Add an entry for
 interrupts
In-Reply-To: <1ea23f76-58c2-402a-2831-ac496ef41b11@linaro.org>
References: <20230527205048.418360-1-festevam@gmail.com>
 <20230530125758.ke7isykxf3bg4efu@krzk-bin>
 <1ea23f76-58c2-402a-2831-ac496ef41b11@linaro.org>
Message-ID: <bab1dddfe012c960f11655a856ac19e9@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2023 09:59, Krzysztof Kozlowski wrote:

> It seems you fix all these.

That's correct. All these errors were fixed by this series.

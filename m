Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1549152503C
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 16:36:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351300AbiELOfq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 10:35:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355407AbiELOfo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 10:35:44 -0400
Received: from hostingweb31-40.netsons.net (hostingweb31-40.netsons.net [89.40.174.40])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E18243A1
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 07:35:39 -0700 (PDT)
Received: from lmontsouris-655-1-15-199.w80-11.abo.wanadoo.fr ([80.11.122.199]:54252 helo=[192.168.1.105])
        by hostingweb31.netsons.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <luca@lucaceresoli.net>)
        id 1np9ao-0003LC-35; Thu, 12 May 2022 16:15:02 +0200
Message-ID: <8f4158e1-b7c7-d2e1-8d7f-80c98b3df58f@lucaceresoli.net>
Date:   Thu, 12 May 2022 16:15:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: vc5: Add 5P49V6975
Content-Language: it-IT
To:     Matthias Fend <matthias.fend@emfend.at>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20220511053455.360335-1-matthias.fend@emfend.at>
From:   Luca Ceresoli <luca@lucaceresoli.net>
In-Reply-To: <20220511053455.360335-1-matthias.fend@emfend.at>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - hostingweb31.netsons.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lucaceresoli.net
X-Get-Message-Sender-Via: hostingweb31.netsons.net: authenticated_id: luca@lucaceresoli.net
X-Authenticated-Sender: hostingweb31.netsons.net: luca@lucaceresoli.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matthias,

On 11/05/22 07:34, Matthias Fend wrote:
> The 5P49V6975 is a member of the VersaClock 6E family and supports four
> fractional dividers (FODs), five clock outputs and an internal oscillator.
> 
> Signed-off-by: Matthias Fend <matthias.fend@emfend.at>

Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>

-- 
Luca

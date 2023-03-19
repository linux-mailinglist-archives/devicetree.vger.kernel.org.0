Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8810B6C03E4
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 19:52:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjCSSwa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 14:52:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjCSSw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 14:52:29 -0400
Received: from mail-108-mta243.mxroute.com (mail-108-mta243.mxroute.com [136.175.108.243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C990D18A8F
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 11:52:27 -0700 (PDT)
Received: from mail-111-mta2.mxroute.com ([136.175.111.2] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta243.mxroute.com (ZoneMTA) with ESMTPSA id 186fb373848000edb4.004
 for <devicetree@vger.kernel.org>
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256);
 Sun, 19 Mar 2023 18:52:25 +0000
X-Zone-Loop: 78d9505b6764082c8720ca553eff70b1ee9c515eff60
X-Originating-IP: [136.175.111.2]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ahepp.dev;
        s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:
        To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=dZMU2BTrk9q0jA1qNGUA8NOqhmuyxANNbZoUYfZCcQo=; b=Lcggyi2KNwphaxudWb6jNRIL85
        NFKzyH7f4FP2eSYWZo296fXlCs1xPaR9kO7K6T2y4u8GIHAU6QIbxtu9B195u4DKzu/WGrq8yaWrm
        Na1FUpOTMBVqqWxJ3Q9dOuQ0yawVh3fqYvlfzFswk8obA1k34Ya9WvG3t+P+ua/GgmMzac0Btnyez
        kqBMU9agtagzfe6OEcg53UcAAijsr6apGT2RtW5YadJ49SJkdHlixRieFK1WGCPnKW2YgKVv6gTLn
        dav4f1HbDpqRBV/Y5CTEZXSCyK2asrC/Kw88hKy2ZtWHPH2r9JNuFLu9+kJbwl2kSGdUAE6oWZbzi
        u6cEaqYw==;
Message-ID: <47bb33b4-92fe-eeb1-0ad9-e65f4cedb43d@ahepp.dev>
Date:   Sun, 19 Mar 2023 11:52:22 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Subject: Re: [PATCH 0/2] Add support for the MCP9600 thermocouple EMF
 converter
To:     devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>
References: <20230319184728.49232-1-andrew.hepp@ahepp.dev>
Content-Language: en-US
From:   Andrew Hepp <andrew.hepp@ahepp.dev>
In-Reply-To: <20230319184728.49232-1-andrew.hepp@ahepp.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authenticated-Id: andrew.hepp@ahepp.dev
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

My apologies, I forgot to add "v6" to the subject line.

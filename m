Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 774F76838F5
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 22:55:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjAaVze (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 16:55:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230154AbjAaVzc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 16:55:32 -0500
X-Greylist: delayed 1805 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 31 Jan 2023 13:55:29 PST
Received: from walmailout03.yourhostingaccount.com (walmailout03.yourhostingaccount.com [65.254.253.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BE395A805
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 13:55:28 -0800 (PST)
Received: from mailscan09.yourhostingaccount.com ([10.1.15.9] helo=walmailscan09.yourhostingaccount.com)
        by walmailout03.yourhostingaccount.com with esmtp (Exim)
        id 1pMy82-0003fy-60
        for devicetree@vger.kernel.org; Tue, 31 Jan 2023 16:25:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=grabaclue.com; s=dkim; h=Content-Type:MIME-Version:Message-ID:Reply-To:From
        :Date:To:Subject:Sender:Cc:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=BjzAo18x76wi2Usnx2VbHBYf78xZJWeQ5l2VapFGSZI=; b=on8yKleMSOwzaKkIVOJK+jy2yu
        iHxR5M/vF6hgzUbttg9ajvbJc8NxzOlhJhLdqJ2WIVOGqfGmNojRk1bF22tQBVZEJBQs8X098C7oL
        mar2NImY596o9cp9PdfT/zWJOsnAaOhhLMtp32unrpglyqsSuJnGAX5hIXLcf+iAy/AX6zy3d6Ryt
        KTO7jXRFz+PqedWDMXQ3Kma8IDSFQnFgz203/z43A87NOCrw2BoXXCyFfYHUjwb/uREA4hWSfqjgz
        yVmhUGmTrA+NRwZM/1IsMdvLDCfhHKmXC0PaePsp8Mgo+9NQJeVDgi4K+WTXD9YTzxDrLqCSP4fx6
        JqhKI4ag==;
Received: from [10.114.3.23] (helo=walimpout03)
        by walmailscan09.yourhostingaccount.com with esmtp (Exim)
        id 1pMy81-00013d-Tz
        for devicetree@vger.kernel.org; Tue, 31 Jan 2023 16:25:21 -0500
Received: from IIS85P.nt.com ([10.15.50.85])
        by walimpout03 with 
        id FZRJ2900b1qHL0A01ZRMGr; Tue, 31 Jan 2023 16:25:21 -0500
X-EN-SP-DIR: OUT
X-EN-SP-SQ: 1
Received: from IIS85P.nt.com ([127.0.0.1]) by IIS85P.nt.com with Microsoft SMTPSVC(10.0.20348.1);
         Tue, 31 Jan 2023 16:25:18 -0500
Subject: devicetree,  please confirm
To:     devicetree@vger.kernel.org
X-PHP-Originating-Script: 0:d3dccas.php
Date:   Tue, 31 Jan 2023 16:25:18 -0500
From:   Sello Juaquin Dabeer <support@grabaclue.com>
Reply-To: sellojuaquindabeer@gmail.com
Message-ID: <d761a5f929f3119af70c90aa2ea2d7f7@grabaclue.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-OriginalArrivalTime: 31 Jan 2023 21:25:18.0812 (UTC) FILETIME=[848C59C0:01D935BA]
X-Spam-Status: Yes, score=7.1 required=5.0 tests=BAYES_99,BAYES_999,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_REPLYTO,
        HEADER_FROM_DIFFERENT_DOMAINS,LOCALPART_IN_SUBJECT,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  3.5 BAYES_99 BODY: Bayes spam probability is 99 to 100%
        *      [score: 1.0000]
        *  0.2 BAYES_999 BODY: Bayes spam probability is 99.9 to 100%
        *      [score: 1.0000]
        * -0.0 RCVD_IN_MSPIKE_H2 RBL: Average reputation (+2)
        *      [65.254.253.144 listed in wl.mailspike.net]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  1.1 LOCALPART_IN_SUBJECT Local part of To: address appears in
        *      Subject
        *  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
        *      mail domains are different
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  2.1 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

01/31/2023 04:25:18 pm

Good day ,

Did you receive my previous email to you, or do I repeat ?

Best Regard,

Juaquin Dabeer


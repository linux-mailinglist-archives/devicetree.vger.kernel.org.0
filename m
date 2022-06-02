Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0EEE53BF43
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 22:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238662AbiFBUDC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 16:03:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239086AbiFBUCb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 16:02:31 -0400
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 02 Jun 2022 13:02:29 PDT
Received: from smtp687out9.mel.oss-core.net (smtp687out9.mel.oss-core.net [210.50.216.236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1778CF17
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 13:02:28 -0700 (PDT)
X-IPAS-Result: =?us-ascii?q?A2DMcgDRFZli/7NplnpaGQEBAQEBATwBAQEBAQEBAQEBA?=
 =?us-ascii?q?QECAQEBAQEBAQEBAQEVCYFGAoE6AgEBAQGkPYcZG4IliWMLAQEBITAEAQGEe?=
 =?us-ascii?q?AEBhVEmNwYOAQIEAQEBAQMCAwEBAQEBAQMBAQYBAQEBAQEGBIEchS9GhlQgB?=
 =?us-ascii?q?wGBVgEOAR6FdQEBrG6BMw10hFkUghAECoJzgTsCAQEBAQEBiUGFX32BEIFIg?=
 =?us-ascii?q?kgBhX2DQIIuBJJGhCMEGzsDIRUYNBKBIUUsAQgGBgcKBTIGAgwYFAQCExJTH?=
 =?us-ascii?q?QISDAocDlQZDA8DEgMRAQcCCxIIFSwIAwIDCAMCAy4CAxgJBwoDHQgKChISE?=
 =?us-ascii?q?BQCBAYNHgsIAxkfLQkCBA4DQwgLCgMRBAMTGAsWCBAEBgMJLw0oCwMUDwEGA?=
 =?us-ascii?q?wYCBQUBAyADFAMFJwcDIQcLJg0NBCMdAwMFJgMCAhsHAgIDAgYXBgICcQooD?=
 =?us-ascii?q?QgECAQMEB0lEwUCBzEFBC8CHgQFBhEJAhYCBgQFAgQEFgICEggCCCcbBxY2G?=
 =?us-ascii?q?QEFDk8GCwkhHAkgEQUGFgMjcwVIDyk1OQZ8D65SkECeMwqDTgUpB4EJB55JM?=
 =?us-ascii?q?YNjAZcSEQEngVeLVJZoqBKBGIF/cBWCCIEcUCidEIEQAgYLAQEDCY8KAQE?=
IronPort-Data: A9a23:FCRsz6JrXitr0JKaFE+RWZclxSXFcZb7ZxGr2PjKsXjdYENS0TwGz
 zQWWmDUOa2LZmXxKot+bIng9EMD7ZLXyNFgTVYd+CA2RRqmi+KbXIjFdi8cHM8zwunrFh8PA
 xA2M4GYRCwMo/u1Si6FatANl1ElvU2zbue6Wbes1hxZH1c+En9/0Ug7wYbVv6Yx6TSHK1LV0
 T/Ni5W31G+Ng1aY5UpNtspvADs21BjDkGtwUm4WPJinj3eC/5UhN6/zEInqR5fOria4KcbhL
 wrL5OnREmo0ZH7BAPv9+lrwWhVirrI/oWFih1IOM5VOjCSuqQRu24QCN9MXdXt0rB+vudY27
 cRx8pKJHFJB0q3kwIzxUjFnMgc7H/Jp1pPtCF/i6O77I0/uKiG2hawzVAdvZdBeo7kmaY1N3
 aVwxDQlbxaNgMqzybS3W69ngcFLwMzDbNlH5y8/lm+x4fAOGp/OQ5/zuI5h5nQ8iZFUFNvZe
 PYhZm86BPjHS1gVUrsNM7oykfmpjXTjaTBVgEyaqLBx4GXJygF1lr/3P7LolseiHJ8P2x/F/
 iefpzm8W05LcseDwHya+Girj+PFlCX3HoQfCPux65aGnWGu+4DaMzVOPXPTnBVzohfWtw53Q
 6DMxhcTkA==
IronPort-HdrOrdr: A9a23:Lb6wjK0YJTua1R+xUmKzHQqjBNEkLtp133Aq2lEZdPUzSKOlfq
 GV8MjzuiWUtN98YhodcK67WJVoKEm0naKdh7N+AV7IZmPbUQWTQb1f0Q==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.91,272,1647262800"; 
   d="scan'208";a="82056736"
Received: from 122-150-105-179.sta.wbroadband.net.au (HELO WIN-J7GFDBAO51J) ([122.150.105.179])
  by smtp687.mel.oss-core.net with ESMTP; 03 Jun 2022 06:01:19 +1000
From:   "Martin Otamori" <info@mandy.com>
Subject: Acknowledge this message
To:     <devicetree@vger.kernel.org>
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Reply-To: <okkmart68@gmail.com>
Date:   Thu, 2 Jun 2022 13:01:17 -0700
Message-Id: <20220206130114C554771B5E$7D29A9D3F2@mandy.com>
X-Spam-Status: Yes, score=7.8 required=5.0 tests=BAYES_50,
        FREEMAIL_FORGED_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_BL_SPAMCOP_NET,RCVD_IN_DNSWL_LOW,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
        SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: *  1.3 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
        *      bl.spamcop.net
        *      [Blocked - see <https://www.spamcop.net/bl.shtml?122.150.105.179>]
        * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
        *       low trust
        *      [210.50.216.236 listed in list.dnswl.org]
        *  3.3 RCVD_IN_SBL_CSS RBL: Received via a relay in Spamhaus SBL-CSS
        *      [122.150.105.179 listed in zen.spamhaus.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.7 SPF_SOFTFAIL SPF: sender does not match SPF record (softfail)
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [okkmart68[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.1 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I will give you more details as soon as you acknowledge this message.
Thank you.
Martin Otamori.


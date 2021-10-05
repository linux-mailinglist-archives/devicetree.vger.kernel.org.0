Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59020423012
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 20:33:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233472AbhJESfP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 14:35:15 -0400
Received: from esa.hc5583-2.iphmx.com ([216.71.137.146]:19341 "EHLO
        esa2.hc5583-2.iphmx.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S229626AbhJESfP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 14:35:15 -0400
X-Greylist: delayed 425 seconds by postgrey-1.27 at vger.kernel.org; Tue, 05 Oct 2021 14:35:15 EDT
X-IronPort-RemoteIP: 160.153.247.227
X-IronPort-MID: 15713
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: None
X-IronPort-MailFlowPolicy: $ACCEPTED
IronPort-Data: A9a23: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
 Cet0xpyzri0Z7igyPPJ6z+KznO4zJLetXMaSuDM
IronPort-HdrOrdr: A9a23:u/ZDbaH7Z3GaPyjWpLqE/ceALOsnbusQ8zAXPidKKCC9E/b3qy
 nAppgmPHPP4gr5O0tOpTnoAsDpfZq7z/VICOIqUItKJjOW21dAVLsSj7cKnweQfhEWjdQ86Z
 td
X-IronPort-AV: E=Sophos;i="5.85,349,1624338000"; 
   d="scan'208";a="15713"
X-MGA-submission: =?us-ascii?q?MDGuu+m/arX5NDwme4e6mghUTrhTQ1pSIYgPR8?=
 =?us-ascii?q?R3XUfCJxfql8DOrvMY7dvvWxS4fedjfm+FkNrBBqpj5A2qWmS45sLb8p?=
 =?us-ascii?q?NGZG/JPa83pQkkqj60Ivcfl7+qkWhaAiSQhmh9keBjrasB//GxWJrQam?=
 =?us-ascii?q?Fm?=
Message-Id: <3d5ec4$fb1@ob1.hc5583-2.iphmx.com>
Received: from ip-160-153-247-227.ip.secureserver.net (HELO User) ([160.153.247.227])
  by ob1.hc5583-2.iphmx.com with SMTP; 05 Oct 2021 13:26:08 -0500
Reply-To: <rev_peter200421@yahoo.co.jp>
From:   "Admin" <infor@trendgraphix.com>
Subject: RE = Congratulations_ _
Date:   Tue, 5 Oct 2021 20:26:18 +0200
MIME-Version: 1.0
Content-Type: text/plain;
        charset="Windows-1251"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

WhatsApp Admin

Congratulations

Your email has won $1 million United States Dollar ($1,000,000) in the 2021 WhatsApp lottery and you are expected to claim it as quickly as possible or your lottery will be transferred to the second runner up.

Its a way to appreciate your commitment to WhatsApp and the impression you have given other people about WhatsApp.

For Security reasons your winning number is (WHTZPPX9) please keep this information very confidential to avoid being hunted by hoodlum when you finally claim your winning.

Your Name
Your Address
Age
Your country
Your winning number
Your Telephone numbers

Yours Sincerely,
WhatsApp Admin

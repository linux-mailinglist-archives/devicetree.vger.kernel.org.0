Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE53C4D080C
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 21:00:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234417AbiCGUAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 15:00:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235271AbiCGUAx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 15:00:53 -0500
X-Greylist: delayed 1819 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 07 Mar 2022 11:59:56 PST
Received: from uncle.firstenglishco.com (uncle.firstenglishco.com [194.31.98.9])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86D8F6A026
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 11:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=firstenglishco.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding; i=the.sey@firstenglishco.com;
 bh=gv+EZEwz3Whlia+q0ZnfKrzdJKA=;
 b=M5tpEu00HkD8oT0y6/9K6z5wtgfvl1ETnQ3NND9OhaR47hTGHIBh+NQyq+VoNP7Yx/wyYJFGmorQ
   RzVJQR1TsnJg9CFqdyfaiRIsKYK72NJDqLEvnMKaEjtRP/Goatc/oNKw6TfVS7dTymDyrbkgzrjA
   9QH2dC9f+YTwZ156QLOc1QIcQRnsydlhBKg4q4BOiaAEm/rQA9Kl0EJXVmZjJ5LnNXT3VKQfruPE
   63MUaja4My2MbQ3QCN1HJ0f/iXxnl6ITgyZE7EJKnZNZDuVAGMxOKtIB4xE+zYuInN3RLZ8MrI93
   6hiYNR7SCkA+3K83a2kt2goHI6knmUqo9WDkNQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=firstenglishco.com;
 b=npbmvZoFUN7KVLUGiZFmm+wPU1D+v20hX7JWuhFS7wKTGZyVoZgYgCx6qxNjVULzATQRg8IlsDil
   nVbdMhVpGV27DTKQycKj+c/j9gSk53iqGVdTjaLRIKiUgrkF8JaHy5IJB9GaW5duzjxZCba6nn4l
   tisNr5s6IH3DsPxnfHW0FZZ/xg32HpZGHC2odKBafr7bFlbAgkVmBSqC5XsT2kK/Y4DRv7qWPtYV
   eeDxUpQrMUWNmONKE/yt0XbF1Cl2WN6dzp9NguvWx3O0FZbGAIrWXnTlOcixm8onV9i0oWqPblsm
   JbIaUwS4nIPWTkhJVkp3qQwvQxUbyACkDkfFxA==;
Reply-To: eymencemil404@gmail.com
From:   the.sey@firstenglishco.com
To:     devicetree@vger.kernel.org
Subject: 073HSBC
Date:   7 Mar 2022 20:29:35 +0100
Message-ID: <20220307202935.E077349E43678594@firstenglishco.com>
MIME-Version: 1.0
Content-Type: text/plain;
        charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=6.6 required=5.0 tests=BAYES_80,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_DBL_MALWARE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: *  2.5 URIBL_DBL_MALWARE Contains a malware URL listed in the Spamhaus
        *       DBL blocklist
        *      [URIs: firstenglishco.com]
        *  2.0 BAYES_80 BODY: Bayes spam probability is 80 to 95%
        *      [score: 0.8180]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [eymencemil404[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.1 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings devicetree
=20
Good Day. Hope you are well.
=20
I hope my message finds you well and healthy? I am contacting you=20
due to my recent discovery in my bank branch and a profitable=20
proposition for you. I will give you more details regarding my=20
proposal when I get your reply.
Thanks for your understanding.
=20
Best regards

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FF5E53DD47
	for <lists+devicetree@lfdr.de>; Sun,  5 Jun 2022 19:03:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351366AbiFERDj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 13:03:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238415AbiFERDd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 13:03:33 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B46EA39160
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 10:03:32 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id e66so11124490pgc.8
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 10:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=f/UilSAxG+uYZGr2O0WgxBidGfjIL+/pLfI/yMfN0No=;
        b=hSpDJqtqjIUDhIDn559KINFcTy2HhQmirAYyWIp3u4ggpeVN2w7gy/y5Cj/x6Jv1Rm
         3Vw38ilIuCdqDxEzvGbGkpVVHpneP7ehulNWpJvcgspEs2MOYfHae1wQUsEglaDUU6Jx
         eCUR2bY2hjRrGXzw7FaQXVRiIf8Tjivkdz9CLen/DWKGGBqxe8+bF4GKSRJMAXJ+/0dT
         LBP/Gb0RaJK4Fv9qd+/OX3RGtWQ4MOqR/g0FOJ8XE9V3K74fbxBkYECCkt6X5nTxKkRE
         2CC3AhpNt77CJu7L5+PLxU+8mtL6cjQ8Yu3C/GnX/DhfWGxy8TCeWh+PsAEIxF8qe4M8
         bMhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=f/UilSAxG+uYZGr2O0WgxBidGfjIL+/pLfI/yMfN0No=;
        b=ZLtvxWk2EDB6QWHg4OSL0eHPYBtlyh4+NokYN+eiyN1/tRFHCx8h8Zm1TS8y+5soOQ
         4obR0BVv9zKuv8MO+9DhJ6HTLQIGuwSCKjAzfQZ9lCq+w+ojtw5zIvxgTPOxi5S4jUpX
         9ouKhddUSH0mwh6cDMsgBGxCFuA+HojkHME87aWoPZiOHpeBDPeY1rqdYdK2XFBxhrOP
         pP4pFWANNtKqwXeHWD881Fa+xeVnjCVShsh2dPYXJ2mYV7GT71csuSD166oEsbsqwl9V
         a8vIW300s5IY6a+62dMwo49ctk1FVLWXDfp/k/BixyjbYtRHpVC90zyjpgdqpNCAuXDM
         UMFQ==
X-Gm-Message-State: AOAM533dNqQM1ajvnPU5S4HZK53Lguv8Zi0AMTpUsqTe3Zy6yo1Elpaj
        v7lY/CUfhB2Sx0G8l86o2l+5oA4d2vp1/YFvkH8=
X-Google-Smtp-Source: ABdhPJw+XN20VGOdWAHvNGqVeL0L/d9oOW4Kbj6jMRt6NwHVGy5SVcm85zzwHc5gWu3n0A7ppS48lU0lSi39n2e3DSA=
X-Received: by 2002:a63:d44:0:b0:3fa:e913:6640 with SMTP id
 4-20020a630d44000000b003fae9136640mr17269746pgn.551.1654448612065; Sun, 05
 Jun 2022 10:03:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:a082:0:0:0:0 with HTTP; Sun, 5 Jun 2022 10:03:31
 -0700 (PDT)
Reply-To: profdorothyinvestment@gmail.com
From:   "Hon. Francisco " <franciscojinvestmentss@gmail.com>
Date:   Sun, 5 Jun 2022 10:03:31 -0700
Message-ID: <CALMQtE-xG=cKug8k97SUkrJcJRn3+YJ6JNFkJUBEnBkg-uPDuw@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        LOTS_OF_MONEY,MONEY_FREEMAIL_REPTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:542 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [franciscojinvestmentss[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  2.3 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  2.0 MONEY_FREEMAIL_REPTO Lots of money from someone using free
        *      email?
        *  0.6 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
URGENT LOAN IS NOW AVAILABLE

Hello, I'm here to testify of how i got my real estate business loan
from PROF. MRS.DOROTHY JEAN INVESTMENTS
(profdorothyinvestment@gmail.com) I don't know if you are in need of
an urgent loan to pay bills, start business or build a house, they
offer all kinds of loan Ranging from $5,000.00USD to $2,000,000.00USD
with a low interest rate of 2% and loan duration of 1 to 33 years to
pay back the loan secure and unsecured. Are you losing sleep at nights
worrying how to get a Legit Loan Lender?
MRS.DOROTHY JEAN holds all of the information about how to obtain
money quickly and painlessly without cost/stress via Contacts
Call/Text +1(315)256-0479
Email profdorothyinvestment@gmail.com

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C059B4BA88A
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 19:40:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244428AbiBQSjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 13:39:49 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244424AbiBQSjs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 13:39:48 -0500
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com [IPv6:2607:f8b0:4864:20::b41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA0D944751
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 10:39:33 -0800 (PST)
Received: by mail-yb1-xb41.google.com with SMTP id l125so14924317ybl.4
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 10:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=5z4KZZme9DmqhD8xo2bWEvO4a/9IShPeRKvpn5SmIKk=;
        b=XiUt7aTjj9bQPDETa6mCtrlJop+fHHEgsGx2ZAflCFX3QmYPJxVP+/D3VBeq1GWv2G
         tPQlgy3miPLScmo+BtZH0TkJf9YjddTcRhViBWCBaGSNO4/VinR1WROVRD99LE4/FUEU
         LZXU4ZP+RJjiCV43bfTB208cwGjc46oLCAZ/AaMixkG2snBX3pNv4mFHiKgKxz6x7D/e
         Acz+tU9jdrkutbFlrl9TTmdyGYzv/sUOpMSLDRs7Qk4e0mZ8nBMYTL6eyQdXfqlfP7Eb
         P4YMMrcQaacezHTN7cQ/izGqZOD1GVQ0y8Ncquq45E33XrQ9ByaK2H7R5zx0hE3Ls8Aa
         +MiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5z4KZZme9DmqhD8xo2bWEvO4a/9IShPeRKvpn5SmIKk=;
        b=7w7/U5LUWSipLbVEdzdqj28gjngSRG8xbV+oas4smOBRmnNXt2OHdCXTEqu17uHuSs
         fksPsyiy+APG5ZFpUybPQTarTomHLXzQ2pC8d7XBJCltVs5sQBPfIPvAM7n5Uf6xOG6z
         eS5pDreunoTbpB+maqlqLSUnm/rEYCr0YHWW0pevk/Vz8unuA9wTohuDucm/vK0Mi0pR
         ERiVt2x1xTSLySdYMfTauiDY7zIsT8Yo+2TYPmfrQC5d7xucq9XanjlJe+r4a4OlQbOd
         APBohwgsbLG73kxy32AJZPPF/ZTyQRLkhL7Bm8WFfJc9qbF7U8MRe2JUvVfEHvuAGVqB
         Htng==
X-Gm-Message-State: AOAM531aR89srMw3g/idr5Il4rpLiwFoifJ/QDYldD3x095AFZbSOGgf
        2uvOaEWw3z3O5hza+VptcM6f2jP+jyy43EMuXdA=
X-Google-Smtp-Source: ABdhPJwbM+YASWpXePyOfKh81jpT4ynebt+q0eMMo1+HqAbnb1F/raFC/E8oqwk79g7rgNTVrlJD8AVT+TY8PyEx+Yg=
X-Received: by 2002:a25:1988:0:b0:615:2b7b:d43 with SMTP id
 130-20020a251988000000b006152b7b0d43mr3638476ybz.424.1645123172809; Thu, 17
 Feb 2022 10:39:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:2312:b0:210:8aef:e1ce with HTTP; Thu, 17 Feb 2022
 10:39:32 -0800 (PST)
From:   Mark Ugo <markugo200@gmail.com>
Date:   Thu, 17 Feb 2022 19:39:32 +0100
Message-ID: <CAB1V1dD_wSB9fFmti1sifSERnzbd+vQkBHy4W-gRvApq35wkQA@mail.gmail.com>
Subject: Contact
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLY,HK_SCAM,LOTS_OF_MONEY,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:b41 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [markugo200[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [markugo200[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.5 HK_SCAM No description available.
        *  1.0 FREEMAIL_REPLY From and body contain different freemails
        *  2.9 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
Hello,

I'm happy to inform you about my success in getting the fund
transferred to Swiss account with the cooperation of new partner from
Germany. Presently I'm in London United Kingdom for investment
projects with my own share of the total sum.

Meanwhile, I did not forget your past efforts and attempts to assist
me in transferring those funds despite that it failed us some how. Now
contact my secretary with below stated information for your
compensation.

Veronica Udom
Email:veronica.udom@clerk.com


Ask her to send you the total sum of $850.000.00 (Eight Hundred and
Fifty Thousand US Dollars) which I kept for your compensation for all
the past efforts and attempts to assist me  I appreciated your efforts
at that time very much.

So feel free and get in touch with my secretary  and instruct her
where to send the check containing the amount to you. Please do let me
know immediately you receive it. At the moment, I am very busy here
because of the investment projects which I and my new partner are
having in London.

Yours sincerely
Mark Ugo

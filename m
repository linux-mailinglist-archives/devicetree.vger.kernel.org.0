Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E9DB4CCFAC
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 09:11:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbiCDIMX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 03:12:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbiCDIMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 03:12:23 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D78271965CD
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 00:11:35 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id a8so15814913ejc.8
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 00:11:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=a665Vh1AQEI8/JHOaUtolrVCd5eUvzoKFIu0MORh4DE=;
        b=USWwzulWCeldobw9CUCKopaav6VFIJjdQ7jEI7zGzQPXpbUkSI4dLnj70sxsIN1BSN
         affNAmbBXILOxfyav85NLzFGtoai5QZWEXb8PF8jywRTVPcPotyru9P4TYeEhmfbO/QC
         sHSytg2JnETj7DKICTMRuR/+dwQ27lnNHOCxDqs4rrsFoUtVw+w9EIezzCQXSacJEZpC
         J4pgYj5//ulSAzOKrdsoKFScryyMcaqge2NsydxYkvO7mZNik1eRV1+e+WBvm5c7quOo
         07EbB3LEqiiKwj71at3MIqC+idPTVlyI2ctgKOs3PJqKLY1ZZf0oXOjxaEK1M0DsHJ+j
         vwHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=a665Vh1AQEI8/JHOaUtolrVCd5eUvzoKFIu0MORh4DE=;
        b=A4tt4lbUi6IR73OdDIWLOCJD7un/IAb7l2vvjBfJzXBN1iZcIitGaLzwMF02/S99zE
         d2BxDvdR0xzR04vBOj8DPFKmUAs0qVReUKAtqpVcVGfFCOToSyoWyo4F2MtPbAhZMOta
         HOFnDiR8s3Fmp6pla0VIM0mFh2FreGVqiLELUSOU278g9uKkF2aDH8VAAHLgS25u/Oxt
         nyKfF9Yd3jgMrMQBuq+8RaDBOhYCZffZLijaqS+ouHjvI16kdB8YqRC2R1XUR2DKGaMi
         2+p8PYUE8PNR9aLP2EupnhwBk3SFhdTQ8urltLG1cRM9DchgzOKPRdUCzGm3q+arPLdX
         1rCg==
X-Gm-Message-State: AOAM531ER2UMLFDGGnQGO+n4ngOqqWFfqYmmHX2Q9NtEHSea8uaUFpnf
        m1iBn1DFW2ZRK2l3qdJklmHlg+QnuXKIvvzFYD4=
X-Google-Smtp-Source: ABdhPJxeNqoet6jaMXkXfPUYjyXCfzGUMy8E+t7FV4iN8qPz/nm/3mQ4tLDLQVngHS7LyqPDDmp8q3hnw+wgfvmuyDU=
X-Received: by 2002:a17:906:4cca:b0:6ce:6a06:bf7 with SMTP id
 q10-20020a1709064cca00b006ce6a060bf7mr31125733ejt.109.1646381494301; Fri, 04
 Mar 2022 00:11:34 -0800 (PST)
MIME-Version: 1.0
Sender: mrsaliceragnvar@gmail.com
Received: by 2002:a17:906:1e83:0:0:0:0 with HTTP; Fri, 4 Mar 2022 00:11:33
 -0800 (PST)
From:   Aisha Al-Qaddafi <aishagaddafi1894@gmail.com>
Date:   Fri, 4 Mar 2022 08:11:33 +0000
X-Google-Sender-Auth: fQQbZHwOqfZYi1SN2XjGKQNpLfg
Message-ID: <CAGHGhXAmeaW7o-6TDR9YnH_R0dfVTpuo+XdC-gPiDqnrmuoSvg@mail.gmail.com>
Subject: Investment proposal,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.8 required=5.0 tests=ADVANCE_FEE_5_NEW_MONEY,
        BAYES_50,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_FROM,LOTS_OF_MONEY,MILLION_HUNDRED,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_MONEY,URG_BIZ
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2a00:1450:4864:20:0:0:0:62e listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5747]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [aishagaddafi1894[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 MILLION_HUNDRED BODY: Million "One to Nine" Hundred
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  0.6 URG_BIZ Contains urgent matter
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  3.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
        *  3.6 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Dear Friend.,

With due respect to your person and much sincerity of purpose I wish
to write to you today for our mutual benefit in this investment
transaction.
I'm Mrs. Aisha. Al-Gaddafi, presently residing herein Oman the
Southeastern coast of the Arabian Peninsula in Western Asia, I'm a
single Mother and a widow with three Children. I am the only
biological Daughter of the late Libyan President (Late Colonel
Muammar. Gaddafi). I have an investment funds worth Twenty Seven
Million Five Hundred Thousand United State Dollars ($27.500.000.00 )
and i need an investment Manager/Partner and because of my Asylum
Status I will authorize you the ownership of the investment funds,
However, I am interested in you for investment project assistance in
your country, may be from there,. we can build a business relationship
in the nearest future..

I am willing to negotiate an investment/business profit sharing ratio
with you based on the future investment earning profits. If you are
willing to handle this project kindly reply urgently to enable me to
provide you more information about the investment funds.

Your urgent reply will be appreciated if only you are interested in
this investment project..
Best Regards
Mrs. Aisha. Al-Gaddafi..

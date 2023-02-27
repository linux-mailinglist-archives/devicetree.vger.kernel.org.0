Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9D326A360F
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 02:02:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbjB0BCw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Feb 2023 20:02:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbjB0BCv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Feb 2023 20:02:51 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95CBA1A7
        for <devicetree@vger.kernel.org>; Sun, 26 Feb 2023 17:02:50 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id f18so6497150lfa.3
        for <devicetree@vger.kernel.org>; Sun, 26 Feb 2023 17:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=weYNpobTz7e34lKnlfhxYchHcnpoQgNkJdKwW1l0gho=;
        b=elJPrrpfaqL8msvLZjKre9mell9KpMqeLxCZsbqvldVzAP8o1dJ3GjewbNdzQCtOK4
         yngzEu2gp5aBYeh3x48p7IwTN7/DQxHOKPqNbMW3ubav6+3uJvT77/jk611fzfPIUW66
         gg8jSxN3k1+8+rNOPp1ghsWdqCjrsNoYuAPlMqGjsR1l02L11j4x9Jl+6hRWYOIHzVMm
         3wb93ZfRDdhvBIYBs3TP7lbaedk/2+WBuoSwLKCzwnF7MaHA5qFabBTP2IJueEB8/a4F
         fQ8DYEl3WXxRstrI5sG+2F0y7RxBOFfq2AoJjpZRTPm6nJomLRPllis/ItRsZ9qSD5yw
         5/pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=weYNpobTz7e34lKnlfhxYchHcnpoQgNkJdKwW1l0gho=;
        b=sr0ClTpUJU4b15QD+ufhDhhE8Spx3tclRz8YH44o1WPiAzyMwRWsSfixCObI49tHZT
         L0g/qPg5VVpRKG/DQ3UC0bQnItY1MQMRcZKki74pmrZy3zE1Xo9uJmwfAMi06dG6y0uI
         ht/H4ZKoEkRQv20NFWS6uXbDOiTLdwyJps/VNI134Uiv8BPJnk8tCuSflzDAaZdBw0hX
         jfJYSTCJTrdTyDlfMn1winw0MdgRJVrAnmxGG+g43m64RpkAW0Vi2UQRRuvQTFThiiEO
         B9nu3S/1hxF8JMBpewBMkKjyzpksfbonboud4bUvYg2a6wlSmh8Gz/2EHn8u8nXUi7Rc
         /1JQ==
X-Gm-Message-State: AO0yUKUyK2tERw+hfc09/5f3vdMTBBJzCK+K9o6CJnuoGiTEPM62o53B
        YYrYrp/ioV8QOdUBpt9hrNAfPxU6EBu9idl5xNI=
X-Google-Smtp-Source: AK7set/7bvKBaJXZUDS5LErqn+a+m/n724C6sVl7zTSQwnAb40KLOPQ1gbVWmiMQUPEmSRkRXc7nNIvPfRafWuCcvs0=
X-Received: by 2002:ac2:5df1:0:b0:4d5:ca32:6ae3 with SMTP id
 z17-20020ac25df1000000b004d5ca326ae3mr6972603lfq.3.1677459768488; Sun, 26 Feb
 2023 17:02:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a89:b8f:0:b0:187:2c43:10df with HTTP; Sun, 26 Feb 2023
 17:02:47 -0800 (PST)
From:   Adel Aldoseri <adelaldoseri1@gmail.com>
Date:   Sun, 26 Feb 2023 17:02:47 -0800
Message-ID: <CAECeVmSQdCnag=+jVHFdu1ebtBbtpw8FbXNZ68US5O2JBCEJ=Q@mail.gmail.com>
Subject: We finance viable projects only
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=3.8 required=5.0 tests=BAYES_99,BAYES_999,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Attention: Sir

Our Company is willing, ready to help you grow your network and offer
you Loan funds to complete and fund your existing Projects. We can
send you our Company Terms and Condition after review of your project
plan and executive summary of your project, if you are serious and
Interested contact us for further Information:


Best regards,

Adel Aldoseri

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6D27774951
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:51:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbjHHTvn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:51:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233397AbjHHTvX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:51:23 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8155319429
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:57:43 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fe0fe622c3so9333001e87.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691513862; x=1692118662;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+95TtRVa7NMKHx76eoSdAamTsOS7iUF0pJWsPf/wsnY=;
        b=IHpotwcuh6jszx4RcDpinWCHsfXfyvrcAvixu1yGPlGpBmnROhW9ZibHng9j1P3LB9
         bd21OsZEAxEhILorCZZbJLj8YV3wsH8E5Aa5Jm6TALBnsEOqlRymHswgEX4Z1eTNrPpO
         kpxiuFMPVUengXWuGtbHmpst8MywDp5yUaF3KuPT/wYQffyQYejPWgik7ileQvipwRSl
         hymm04IDfQsMzu9dOMvzghMMWLydmbOZmL6DqSH9s0sZ15+ixFsAsKhFdyDvvCqJgZqD
         nBcJnVuUbTTORq0Zi7zO8pDk6TaBhMcTlcX/Cn92QSkPJlEusfbxji4ZAydpO7lg1MH5
         Xi1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691513862; x=1692118662;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+95TtRVa7NMKHx76eoSdAamTsOS7iUF0pJWsPf/wsnY=;
        b=Vojzx/kS7fbT43VkwfSDJU9pz5Ben1koPegTzx6FDi51Oi4ZifPP0CJcm1kJA7fp/t
         VElHryu0/F2Qn6DK9H9X3ETRhx7YsLmF75c+9S69OoH89lTuAa55ZVJlkJbqGYx2TeRj
         6jrR3atkVwrWKr+VoEQdph0GoaXeVXrmDkuVMWNj78gbwLolX/2wDOLSwN015YMwdTnv
         KS69AptqSoCUTjfy2aboQ7YkYLwkykT5WWFgRGZx8gjZJAaJsaOpW3BmGwM7N0Bfb6dQ
         i/xi102B+St89InRL9Tj1zwivwaJIHS5bcxXXsqvm00cXUIZcJuGStfm0Pf4NPNkl+8v
         It1g==
X-Gm-Message-State: AOJu0Yx8NDMHhhbpvuN2cADuIppfVdH/26TRH0DEtomEgjlfGm4ijt/Z
        +Y+N70bRDJLlv7nhCt8mVxjojhYOdacuX1y3YfQ=
X-Google-Smtp-Source: AGHT+IE9RVdSnBVCqSMdAuNawk+jk+kg44DyDIpSMpQjU6+I7Pq9c966UbP+ru5Fn1tIIgW2DBUZx9ALGvLSYI3VrfY=
X-Received: by 2002:a05:6512:348c:b0:4f8:5b23:5287 with SMTP id
 v12-20020a056512348c00b004f85b235287mr38747lfr.62.1691513861193; Tue, 08 Aug
 2023 09:57:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6f02:2090:b0:54:12f2:b0c2 with HTTP; Tue, 8 Aug 2023
 09:57:40 -0700 (PDT)
Reply-To: otatianaa557@gmail.com
From:   Tatiana Oligarch <ew.fideliar@gmail.com>
Date:   Tue, 8 Aug 2023 09:57:40 -0700
Message-ID: <CACd2tRP6MgFV+RLEixofxuE1R8utOwDUy512N3oSFFO6yj_EcA@mail.gmail.com>
Subject: Kindly reply me today
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: *  0.0 RCVD_IN_DNSWL_BLOCKED RBL: ADMINISTRATOR NOTICE: The query to
        *      DNSWL was blocked.  See
        *      http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
        *      for more information.
        *      [2a00:1450:4864:20:0:0:0:12d listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [ew.fideliar[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [otatianaa557[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  2.6 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
        *  2.8 UNDISC_MONEY Undisclosed recipients + money/fraud signs
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
My Greetings,

I write you with sadness in my heart because of constant attack to our
country Ukraine by Russian army which has caused lots of deaths,
destructions of properties and homes.

I am Mrs Tatiana Oligarch, a citizen of Ukraine currently in Kyiv, I
am looking for a reliable partner who can help to receive my fund
deposited in a foreign bank for safe keeping and investment in good
profiting business. I want you to help and receive my fund in your
country and I will come over to meet you for foreign investment
partnership under your care and advice.

Hoping to read from you today and know your sincere opinion in helping
me genuinely.

Sincerely,
Mrs,Tatiana Oligarch

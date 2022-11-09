Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FA3A622D2B
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 15:09:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230407AbiKIOJd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 09:09:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbiKIOJ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 09:09:27 -0500
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20DD817E1E
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 06:06:36 -0800 (PST)
Received: by mail-yb1-xb31.google.com with SMTP id y186so16446556yby.10
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 06:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+PAI4rgqgu8lkz8iluiDX4+RYG6mJwQ4g48BRbmTMI=;
        b=TOrsXdlWnzaWkmhpTAmFlgwYVPW9AQywnJbLsuZO9xaw9HblGevULMzGeVbM/6XvsS
         UVDKz0xXFFZ6OaPXBwVfz2Ke8lLk9qT1Q990AZtmXcple2WnPm3MSylnvVJ2noMWTPvH
         WCXZXuHkjFqnMMOw6dJKPxGRbRcJQwdOIH6cyGraTIqYQPaj+hNZbVMuks91JC2Ur2eC
         iIG4217RJrEA0V4u+MRRjR3/MBN7X1nnAZVBF4HJ+GVhr+ZPSG1xdv34lBh2n1CyulJT
         ODN2yPQ7Lu1q6sEQ0UOWeWguR+ORbLtlCyH+MlKOTau6d0IkrMiLSYbfkwtlyiQ4XsSS
         8/uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0+PAI4rgqgu8lkz8iluiDX4+RYG6mJwQ4g48BRbmTMI=;
        b=WEl0dNFV3vr2jvPAQ8sNBccFQDG9SEibdyedk4WHxonZUZsD086Vc5ACu2y8IBHCvm
         A6IzKdEKoMFipUrrl61xp2gmAlOpt0X7zXkGmUkbwvXFN2OoD7h9yXhIrr/Y7ZMcxL3J
         Ux6y2hihVME/52vsTAGi+Qtp/rpTE4AWMDQvvr6YTOJ46Wq+ew+dgEY/Z+OeOOZvWqcc
         OxlsVXwCPDO4qrbOX4ToGDDFq/0ya6uBH9NBmDMuFhqft/NQWHKsu5+WmMSpZN+nRTh2
         6+QIoXt5XhshAQ7q/Dt+W7mGs7JurROsAw9hqXHS5vJetGsZZFFqm0qUmu3ak4jP59IF
         nJ9w==
X-Gm-Message-State: ACrzQf2nqxd+Rzzf5VeMyZwOHSbY8WJPpOZ9Z7lkvdbKrPh7c7v5nPMQ
        Fxy+KMmlbM7PqV6/MKLZ64tTcW92wWrysD81yxQ=
X-Google-Smtp-Source: AMsMyM4XfpeCxgrhr+UHYUNZJrjBuVMfZ/EPYo16+j3Qg91iHSs0W0LHyq1gVm1sw+eY8v+tApdIXpDzMBLgYperd8M=
X-Received: by 2002:a25:ba91:0:b0:683:ebc2:7114 with SMTP id
 s17-20020a25ba91000000b00683ebc27114mr59677345ybg.319.1668002795091; Wed, 09
 Nov 2022 06:06:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:5924:b0:2f3:35fc:73b6 with HTTP; Wed, 9 Nov 2022
 06:06:34 -0800 (PST)
Reply-To: illuminatiinitiationcenter8@gmail.com
From:   Garry Lee <nakafumasitula@gmail.com>
Date:   Wed, 9 Nov 2022 17:06:34 +0300
Message-ID: <CAP9_fsFOmwspBbqjWXZcTXfkGJJwoqarTO7fhcYzwaXNpvzJeA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_FILL_THIS_FORM_SHORT,UNDISC_FREEM,UPPERCASE_75_100 autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
DO YOU WANT TO BE RICH AND FAMOUS? JOIN THE GREAT ILLUMINATI ORDER OF
RICHES, POWER/FAME  NOW AND ACHIEVE ALL YOUR DREAMS? IF YES EMAIL US :
MAIL: illuminatiinitiationcenter8@gmail.com

YOUR FULL NAME:
PHONE NUMBER :
COUNTRY :
GENDER:

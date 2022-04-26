Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 343EA50FE59
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 15:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350644AbiDZNMA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 09:12:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241162AbiDZNL6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 09:11:58 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1398851E4A
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:08:50 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id v1so18484961ljv.3
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=nIgHZXIaeZhf23re2WIWSl8FwNzY4XssmB5G+OP1fgY=;
        b=Rp5M6DGffMumgwzkfOxSGjjr4ftDhLODR5a1+q5sbrDoKirJOLXuBQ71oayOURisMO
         9Molv9WeL2gfac8WqaGpduQH6/7pR2Awbo44GWSqvV/tk4K9F8weG4VpvHx3pAej7BNF
         HPsLeLucDBWWTffw5HaUQ6d+hbLv1YrsXfNgFQjlReZshnJhK+b55jz4gAES9FItZNOi
         ymE+uxRgs1h7TzFLT3kZQoLIR5mQQlJk9p5lSj+3Yfbs/exThc/f68iWae4fMOA+yfl3
         zGmd3Lvb8K9xbkqQ9nEiwqb4AGeMmEHL8FjHscFDPpE4nQwcz4BC7KcbbB39dik+ISmK
         4QiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=nIgHZXIaeZhf23re2WIWSl8FwNzY4XssmB5G+OP1fgY=;
        b=sXJvpWQ+TM/sRFp4vJKZFIpy9JxnBIfGcum+INNFACEzWVqTUxh96Sos97PukjUAh9
         b3MPmlkUoMi3FTlbfUa9cxRsmizymddKs9QGQkrVdJHl3BbksmzNv85mSMSMZi8R6YO7
         COvGW2MJqV1EOr9IOs7V4192u4Z9pjnuvcJhFHwJxZaRGtN3ZaO1E9hnnUhjMcp/9L+E
         xMFTYyuNd/R3TX4eGfo1rJ9gXmDZcfu5ImYnnSyl+4jeioqrcnUVOcyVr4UAP4gjtw2i
         w1A40sg2a2b1aSWa79jr8L6TDDycRYd3vBQkzHlnVf3rZ8ud5Foy94iP6EkKm0pHrvvY
         zIZA==
X-Gm-Message-State: AOAM533rQH0hXEnr/MH3vduD7NI5J8zvy3F70GNaNcJBtBA8w9hGX5K/
        oGBMSMVlaLZ+p5M46ozEunfzXl1GyL6s8u431w4=
X-Google-Smtp-Source: ABdhPJxJgeVKOFA/6frHypReElNZg7XGWMv45cKJWIMCxQMjsLYM6e2ktns33x2pek7Zln0pYRmYoOJAo4wHgFeZBcM=
X-Received: by 2002:a2e:9c43:0:b0:24b:469:2bb6 with SMTP id
 t3-20020a2e9c43000000b0024b04692bb6mr15136354ljj.248.1650978528342; Tue, 26
 Apr 2022 06:08:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aa6:cb41:0:b0:1be:7e9f:f9a6 with HTTP; Tue, 26 Apr 2022
 06:08:47 -0700 (PDT)
Reply-To: usarmy.jameston1@gmail.com
From:   Major James Walton <josephinmnyinge70@gmail.com>
Date:   Tue, 26 Apr 2022 14:08:47 +0100
Message-ID: <CAEH2Oon1-iK2-v5D9jvDrtSNmU1_Pm6ePrZ8FNs74Jpb3_goVA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
I am Major James Walton,currently serving with the 3rd Brigade Support
Battalion in Iraq.I have a proposal for you. Kindly reply for
details.Reply to: usarmy.jameston1@gmail.com


Regards,
Major James Walton.

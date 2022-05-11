Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 914F6522B05
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 06:31:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231929AbiEKEbU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 00:31:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231442AbiEKEbT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 00:31:19 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 442092F00C
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 21:31:16 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id l11-20020a17090a49cb00b001d923a9ca99so994214pjm.1
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 21:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=s3Cdswvtyrq8qHVwuRB9YRoTAIoD9G/2//h6WeFZHzo=;
        b=LKcfP/gGv/FW8GV71zoBDyHCMcjcF+tGlE02o9FMc2Z8z2s+h1fvQswBRD0AD7ns4M
         CJFoj3Wx1/h6x+3hCA08zheoylL/PVoxilu3OGlgb0TVdjnnvqc9zyxPm1ULrNhHE1yh
         nf/9VHFDhBKDjSev7IOUksx7RMtXOcw9sby9XU/2RdT/l+BZypGAzpCYoPk0mcihb5m6
         mzEMmLeFNRXgCSrfk9qWFIGV/GVOL0a9b8fEznPtSqk8hFNT9rYONMWq8bSrryh8v+1F
         pdYzMMG9wjUZnm3YegpGOuTmmvhAlJJHYz4aqoomDaMFc2Tzi9tX3hd7r1vF7Mzp/Bos
         WODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=s3Cdswvtyrq8qHVwuRB9YRoTAIoD9G/2//h6WeFZHzo=;
        b=NxZGlI8P1oSYSJFgTlzKlJS0GdAxCqULoyfn2Nc3yrSkyGcZOxE+2zKuSAGcONFeKo
         cLUesuMEkJjxhANXqVffkJ8uDz/4mVvGSbsl0YhwL88u9kyyFOW9ZIePou7i2U7sBvqy
         OjtoRDF4zDS8WWmhXtgcdzCoIN/ewF4eSZinIEO9VfOnYNsJvlPIlWOq5/RnDXgXu28i
         F3GxOfKSyuYPoPIUS1SdhkrWORbE8lYIHitN4ACJ/txnw8GdpuZcJ7D4/2Z/vpJJ7pSG
         +A4ACKYHAMOECCfApG6lnRm2icmygh8KExXEMO7fxf2/EsB+UTc3EvvQ+hBZRHADT+xM
         toZw==
X-Gm-Message-State: AOAM530f26cwkpyDVU/cznSDzF5bptk/qxZjjelG78nLlyg7yVRa0JGO
        3Yf0ZuJvu6nhKKxL8hyTrew0pNilcxK0frNI5DM=
X-Google-Smtp-Source: ABdhPJwZl7hoImT+P+mZt9Il5fklaEzag4UpDBeZPw3re0wLIxLAJ7sEz6CWle/tpgTJ/9iSkZ3yWNCr0FzhW6Gu22E=
X-Received: by 2002:a17:90b:1e4e:b0:1dc:583c:398 with SMTP id
 pi14-20020a17090b1e4e00b001dc583c0398mr3324420pjb.232.1652243475709; Tue, 10
 May 2022 21:31:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a10:319:0:0:0:0 with HTTP; Tue, 10 May 2022 21:31:15
 -0700 (PDT)
From:   Private Mail <privatemail1961@gmail.com>
Date:   Tue, 10 May 2022 21:31:15 -0700
Message-ID: <CANjAOAg+D6SZp5bYwnRwnONiPaoMNFaROWJ=sdNeEAtSDm4M3Q@mail.gmail.com>
Subject: Have you had this? It is for your Benefit
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.3 required=5.0 tests=ADVANCE_FEE_4_NEW_MONEY,
        BAYES_50,DEAR_BENEFICIARY,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,
        DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLY,
        LOTS_OF_MONEY,MONEY_FRAUD_5,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_MONEY autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Our Ref: BG/WA0151/2022

Dear Beneficiary

Subject: An Estate of US$15.8 Million

Blount and Griffin Genealogical Investigators specializes in probate
research to locate missing heirs and beneficiaries to estates in the
United Kingdom and Europe.

We can also help you find wills, obtain copies of certificates, help
you to administer an estate, as well as calculating how an estate,
intestacy or trust should be distributed.

You may be entitled to a large pay out for an inheritance in Europe
worth US$15.8 million. We have discovered an estate belonging to the
late Depositor has remained unclaimed since he died in 2011 and we
have strong reasons to believe you are the closest living relative to
the deceased we can find.

You may unknowingly be the heir of this person who died without
leaving a will (intestate). We will conduct a probate research to
prove your entitlement, and can submit a claim on your behalf all at
no risk to yourselves.

Our service fee of 10% will be paid to us after you have received the estate.

The estate transfer process should take just a matter of days as we
have the mechanism and expertise to get this done very quickly. This
message may come to you as a shock, however we hope to work with you
to transfer the estate to you as quickly as possible.

Feel free to email our senior case worker Mr. Malcolm Casey on email:
malcolmcasey68@yahoo.com for further discussions.

With warm regards,

Mr. Blount W. Gort, CEO.
Blount and Griffin Associates Inc

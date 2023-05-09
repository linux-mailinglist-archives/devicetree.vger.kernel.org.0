Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69FD96FCE5A
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 21:14:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229998AbjEITO4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 15:14:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229664AbjEITO4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 15:14:56 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E907E0
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 12:14:55 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id 41be03b00d2f7-517ca8972c5so1076772a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 12:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=globalsolutionsmedia-com.20221208.gappssmtp.com; s=20221208; t=1683659695; x=1686251695;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pmsSKIfq2LB7eG57vyfV/PIgpZB2IacNPCyBzVb97Z0=;
        b=hn2JuiV6KmN1qaGvG62601lhH56/5HAnnINITOx6FY+mUiB+ZYB+sYadHSiqdjzlbz
         aeW+Qge2Jgy9+MZu79h/3e10cK0fvbm3X7LjG2gysyglGDOL12BYUcGtpr6kB7cAAmG/
         B/O07ArvX1D5+ofzXYtX0bfLuaHbvd4sbC0CggqLJzE4EmUg+6wCYoBk7teb6UGsMmwd
         4g5J9fYeX3JLlSTX/qa3bIeLHsNLV78JdfK1lHt+fhS0U6IFIEBSHVZhHn88fwASNYdK
         qPcEbJJHFXr9DJ16sa8ECymnjE5taEGvmV3ympqbRi/yqabsM23cRucxFG/EyXyvDGtf
         xoIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683659695; x=1686251695;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pmsSKIfq2LB7eG57vyfV/PIgpZB2IacNPCyBzVb97Z0=;
        b=k7wJiqSweeZpiCHh2+cTsSr0ZHDtBFDBeHp7ZzkGdDXECxzT9RsXJbFPvNvbfCbUfE
         RteX2tnCBoctOS+ORflSyVQ9uKqAPUW6Q541h68kSt3kefqBT+MOEVI4t/GWq5s6Y6BZ
         gj/f8LPkZf6cPirhzaZY2GUrH+Q8ydk2JdczYcdlgmG9byZDK1RDN8pecJ4hT0V1k6B5
         CyAic3mCN2PXH2OFZbQT07mvUoPRGKkIrqrNqZkheC3oxAaToxsZ2NyjlF5Nw2vUterP
         +QoahuQFp4fPuyxncRDS7uVlMiI5bkdopuHQsEsmjHiDgGdjtdbyY9yR2YM7oEucbCYj
         Wg9w==
X-Gm-Message-State: AC+VfDzWN2HI6GjYtktDhrHSAYQGdvcgFvRq8xnmyBZYLOGKbi9arafr
        4nlZ+vW1X4nVCQgsWwF7Dstk73ISVGtjPSi7bhqcDw==
X-Google-Smtp-Source: ACHHUZ7JHEFhc1k+YdlwRrh9VbN5lys92fiIj5QkUTJlqF07PX2Px+/WY5yuvC/gzLVOa1879psYpg49oi7IPqh4Rrk=
X-Received: by 2002:a17:903:2343:b0:1ac:656f:a68d with SMTP id
 c3-20020a170903234300b001ac656fa68dmr12556226plh.4.1683659694861; Tue, 09 May
 2023 12:14:54 -0700 (PDT)
MIME-Version: 1.0
From:   Veronica Smith <veronica@globalsolutionsmedia.com>
Date:   Tue, 9 May 2023 14:14:44 -0500
Message-ID: <CAAmV-tQNpqpcviSS_ZfFLewzxbQTFqSxP9jf8dYmvdGCKcJnUg@mail.gmail.com>
Subject: RE: Verified HIMSS Attendees Data List-2023
To:     Veronica Smith <veronica@globalsolutionsmedia.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Have a Blessed Day!

Would you be interested in acquiring the HIMSS Attendees Data
List-2023? Which Includes Complete Contact Details And Verified Email
Address.

Number of Contacts :-50,365
Cost :- USD-2,289

Kind Regards,
Veronica Smith
Marketing Coordinator

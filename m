Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAB0B63D967
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 16:25:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229862AbiK3PZq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 10:25:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229680AbiK3PZp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 10:25:45 -0500
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com [IPv6:2607:f8b0:4864:20::b43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07DC57CAA9
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:25:44 -0800 (PST)
Received: by mail-yb1-xb43.google.com with SMTP id v206so5259201ybv.7
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4XIz8br2T5PkDoxLZW7GepZRxJBNmHjLHbZmuegL+wI=;
        b=ksxm5v7uvAzE12SFq88bIyPV3GfHSCYdvTrp6e5CYIoaQcs4u1jjPK0PmuSmYCagur
         PRNMzPCrZFzQBqjo2jMgeiTjtvNvNgIrx9HE2BsX8VabGY5r8FldAslzNsgvhDmbvHhz
         eqCQNsF7KBWhZluq+kC6h+hr/yikX0ZuMYWYAKHeGbtdYcIsrilw2PyiSAzor8YJ048I
         UhXtncNohjq8GdssEbOa0kJ7lN3uxVtkD6l4A5+xG0beCl530LpEaU7uTXH2+w5GCus2
         kE5NvX4QmuGR1xkicBOY8WuiCaKE7F1agYnmgljZTroI//wCJcxJ8PKsFioV3khkST+7
         m7Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4XIz8br2T5PkDoxLZW7GepZRxJBNmHjLHbZmuegL+wI=;
        b=XlR1703jzQvxLJ9ydCqAgY2AmyGuyAx497MTaBJjDGd1XuvbKVWJV9KxD8iPZDPoKa
         dHuoLyzcRPL0o7b63OsvMfh+BRxmSN3KQLcQk6fhnCVWwPvoZbJHNIZ/MFsRJDeyGLud
         H53/zs0mYpuYSUCWgMaxe3O1+rHmgEiMeFpvy6Ew9CGnpEhMEqV0TBLFu3XTIbXobw2C
         VoNXlJ0dd0zwQ9CIearumd37xb4O4Pjal83iaGTDU7lUha9qdxmipJ0TXO6oy+T5f1R8
         MrVF+oiIk0LQ2wFP0nR3vuj0V38pe6RuU/YFWfmw3A8Yw8WkFDB7Ji8nM31T5toAjtH0
         ohmw==
X-Gm-Message-State: ANoB5pnqaQnG+kAG4y6GhCRKaKqESjDu1xdqeG2S7XIgSi3JbXHnN3xE
        01SemYIN5kHarQ/ZTp1w6w40kMhQUWLlJ2G516s=
X-Google-Smtp-Source: AA0mqf5koPKUUDublPE/IrjhueCgn9BqrxS83vU5nrpJhMxOPBKUleeewWsubuTSI1GQ1WdZrpnZpCFkquj34pafndM=
X-Received: by 2002:a25:d743:0:b0:6f4:9ab9:58f3 with SMTP id
 o64-20020a25d743000000b006f49ab958f3mr20689382ybg.241.1669821943108; Wed, 30
 Nov 2022 07:25:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:6c07:b0:3de:4ea2:eeae with HTTP; Wed, 30 Nov 2022
 07:25:42 -0800 (PST)
From:   Jim Ovia <oviajim999@gmail.com>
Date:   Wed, 30 Nov 2022 16:25:42 +0100
Message-ID: <CANCpxrGwrk6CPQhpcBou_=Q-wuqAYsU0pFd7DnMihRA5E0MryQ@mail.gmail.com>
Subject: Beneficiary
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=2.8 required=5.0 tests=BAYES_50,DEAR_BENEFICIARY,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear Beneficiary.

Your grant was among the list for 2022 enrollment, please declare your
interest and reconfirm your information and indicate on how you want
to receive your UN approved grant.

Regards

Mr Stanley Ezema

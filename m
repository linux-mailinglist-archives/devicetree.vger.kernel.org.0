Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5A5E628312
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 15:45:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237006AbiKNOpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 09:45:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236464AbiKNOp1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 09:45:27 -0500
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com [IPv6:2607:f8b0:4864:20::e30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C7D52E9DB
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 06:44:43 -0800 (PST)
Received: by mail-vs1-xe30.google.com with SMTP id p4so11579069vsa.11
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 06:44:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TDD4odG4r6r2FFSUbuXjQnaIDLkqm4SYPlYk8JgwRG0=;
        b=bSTBS+UwIJoGYERxx8sMuOF9h0aklOvy9mKGzl3ITPDTxziUXCBWcBNC04rMsZCXgU
         HQSzcFJGo+zZn+eivwsRYcxZD0kMXo+8GXObIe+1y8V7yGRw4j/WjInlLFUwsYSG+n2i
         QXEE7umxtH/9V2yGLSV9xuePgZBoC8DU2yEFLshA9Y1N3cNXgutBLsf8ESVIgCT/KJrp
         5dHTDOKkP3CC1IgW7TWlMyF8A3xtQBjeLNkPiEd0PIyTFhIlyhpK/kidk3ynWXSQzXTC
         FiuWuJ9csk7FlbBhMdwIhqouwxXomLhUdzn2Lde9KdwGyau+QsiiWr7U/Jgasq1TxXfn
         VcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TDD4odG4r6r2FFSUbuXjQnaIDLkqm4SYPlYk8JgwRG0=;
        b=TUDeFXRauA0Nxk5t2Ju56sR6xXj9a/arMEnjTKxr6HVpsZEZOjcu4+52mcPP1zk7eG
         u9/2vsLjfzwVxzlvCidCSxqjPW4GG90qrj1xQreM8sULLHEwZnR+gVCluygaWRJTe5hd
         eoaishteJyxHF0jIa3iJ6aFv4ppmhTwRd8YWvxV8Rzz0WUQ2di1UcdABmpa7VQBpQj2C
         YCyGc0l5dntchJQYRwCLxAu3jLuAzMVVGkE0gaqBuou2UYaE4dtBZxkSXns2E9yQriEe
         BZTPUF1peEd+Ix1wOiGxNoKGHmLZse+bXV2Ew7SzVrrFNHQnY5vM/FsYUxX1r9deUcx5
         w+zA==
X-Gm-Message-State: ANoB5pl5679u4ewzLoz8ZQZUloNyKs/BbeNle+NaVv/k7Y4UG+ED2HFQ
        BcJJoAOIdXBFzj3REZ7icjYYe2DSVHpybsL1P8bS9A==
X-Google-Smtp-Source: AA0mqf7GN7HAz1P+7NaDghpgbl0bA1RxgVxRtZRKHgyOjm+k7fAqKDWHqcEj4ikVCKhMS2t+v6z+m5O7wQVDC+FSAKk=
X-Received: by 2002:a67:ebd9:0:b0:3aa:305c:da63 with SMTP id
 y25-20020a67ebd9000000b003aa305cda63mr6268938vso.18.1668437082717; Mon, 14
 Nov 2022 06:44:42 -0800 (PST)
MIME-Version: 1.0
References: <20221104060305.1025215-1-andy.chiu@sifive.com> <20221108170259.2e95c6c0@kernel.org>
In-Reply-To: <20221108170259.2e95c6c0@kernel.org>
From:   Andy Chiu <andy.chiu@sifive.com>
Date:   Mon, 14 Nov 2022 22:44:31 +0800
Message-ID: <CABgGipWRzcRxqmwOVibxupvme7eD=C+ZR4ARw3SjQM3rb411Kg@mail.gmail.com>
Subject: Re: [PATCH v3 net-next 0/3] net: axienet: Use a DT property to
 configure frequency of the MDIO bus
To:     Jakub Kicinski <kuba@kernel.org>
Cc:     davem@davemloft.net, andrew@lunn.ch, michal.simek@xilinx.com,
        radhey.shyam.pandey@xilinx.com, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, pabeni@redhat.com, edumazet@google.com,
        greentime.hu@sifive.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 9, 2022 at 9:03 AM Jakub Kicinski <kuba@kernel.org> wrote:
> FWIW this patch set was set to Changes Requested in the patchwork
> but I don't recall what the reason was. If you're not aware of anyone
> requesting changes either - could you just repost to the list again,
> the same exact code?

Hi, I am not aware of any requested changes on the v3 patch either. I
just resent the patch again, please check the following link, thanks!!
https://lore.kernel.org/all/20221114143755.1241466-1-andy.chiu@sifive.com/

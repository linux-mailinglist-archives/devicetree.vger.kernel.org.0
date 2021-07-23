Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EDE73D4323
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 00:51:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233064AbhGWWKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 18:10:38 -0400
Received: from mail-il1-f200.google.com ([209.85.166.200]:47872 "EHLO
        mail-il1-f200.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233265AbhGWWKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 18:10:37 -0400
Received: by mail-il1-f200.google.com with SMTP id b11-20020a92c84b0000b0290205c6edd752so1764105ilq.14
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 15:51:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
         :from:to;
        bh=DaaaaLaBW1jmlP7RMEUt9dIMXSCUGy/U8gtZX+ytnqM=;
        b=kdyA/5RPicjKtvG4hmTvE6GSPylGPCUwdbuSSQPeZNGciFndSZdU0K76IU41eSiFXn
         Dowi8vfpuWdQDKM/LpYNbqvu+A/5QnYNz3vUiV8BvuE1kPOBNQ1LjCovsQyw+WkoNVUM
         0/qxD4JFARSZn4CE4FILO8uh6lOV9j0kCt7LzqVUnVox2aTTxjqccC5ugcg/Gs1wr6m3
         4TdQpLRYApZ3MsQUQSf0NGTkCjT0bmRwWl9C+L2RFT/wXr9Yj2E+43hVDHC4ySu5qmGA
         bxf5P7DSphaU2ER8m8MIxldHGuuxudhGi9DBaoLb7C4HqNpUjlUYY9SBAdMPs6Etaifh
         ovFA==
X-Gm-Message-State: AOAM5327e4nRuL5mcwokhbdmbUWHqe8gAYAty8aiRTvC8seve8d/fdAV
        ImJCT4pP9t1eAEfcfqXFmb4ZxhACZt4Hr+bg7ds4NijkzzcU
X-Google-Smtp-Source: ABdhPJweXdk5LKw1isr4SDbMvL1cbkMhpSNQqGu3T3XT9SozL7genpVeOdqLMsTdl2BTZ1gxnhs5pMIqV2dyyp0c0dqI1H+ZhY0P
MIME-Version: 1.0
X-Received: by 2002:a02:ad08:: with SMTP id s8mr6092490jan.40.1627080670155;
 Fri, 23 Jul 2021 15:51:10 -0700 (PDT)
Date:   Fri, 23 Jul 2021 15:51:10 -0700
In-Reply-To: <20210723193611.746e7071@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005d9aa505c7d23d2a@google.com>
Subject: Re: [syzbot] KASAN: use-after-free Read in tipc_recvmsg
From:   syzbot <syzbot+e6741b97d5552f97c24d@syzkaller.appspotmail.com>
To:     davem@davemloft.net, devicetree@vger.kernel.org,
        frowand.list@gmail.com, gregkh@linuxfoundation.org,
        jmaloy@redhat.com, kuba@kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, paskripkin@gmail.com, rafael@kernel.org,
        robh@kernel.org, syzkaller-bugs@googlegroups.com,
        tipc-discussion@lists.sourceforge.net, ying.xue@windriver.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

syzbot tried to test the proposed patch but the build/boot failed:

failed to apply patch:
checking file net/tipc/socket.c
Hunk #1 succeeded at 1885 (offset -1 lines).
Hunk #2 FAILED at 1974.
1 out of 2 hunks FAILED



Tested on:

commit:         704f4cba Merge tag 'ceph-for-5.14-rc3' of git://github..
git tree:       upstream
dashboard link: https://syzkaller.appspot.com/bug?extid=e6741b97d5552f97c24d
compiler:       
patch:          https://syzkaller.appspot.com/x/patch.diff?x=11e7d8b2300000


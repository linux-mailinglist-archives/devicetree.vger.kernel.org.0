Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EA8E3B3133
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 16:23:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230008AbhFXO0O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 10:26:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231735AbhFXO0N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 10:26:13 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C533C06175F
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 07:23:53 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id i13so10604357lfc.7
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 07:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=ANhbTggsY3NFhRZExKMwUmb3VzJqye8XLvWVXSvNBkQ=;
        b=AlJjUH/1EspFVLQJKM2Ta4UEK0+kNiZyypEOFrgBcEoq5A3Ct9/tJi85c2Q69G/44W
         51FkFNiX0NbrQhIfxRv/683gHKfC7ABhHcBCInjue/qgLi12GZtCw8TbOVgKmZyktF49
         rmj7dgd/2N7Wv/qvpuhB3x6/UqLmQz4i8fpvypdPO5m0Ed6ii0WX14hg5K9csU8SbNLr
         CCRjliA8n7kRtOc3N6B3TARSmLni7Q/b+IXehucBNtpmz+c+TtbrkU4z5nAUvU4tG18h
         nj+p511kX4pqc7rKrTMbECnPqmQ4+X78i43OIXhaPstQ3rS3ZPCgDqt4vv7UWF5fuJrI
         4LMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to;
        bh=ANhbTggsY3NFhRZExKMwUmb3VzJqye8XLvWVXSvNBkQ=;
        b=PQoLNtzdQOyJKag6gu8/g6SOHRwofyITzITegCnAhrs2+uZezulmEkse391LYvpxez
         IwtuD4+vp2g6YA5YWV1GclFQgkAKbCIRH5goLkzyRUNMxM7LBXnzOy776gltLfYxdalU
         sGq1/V7NxscEviR/WVzGEhNHyP36VyZNla18Tqiuqx5gp5q8TXLem6g4zkz4Ajqpm9kQ
         +b1a5kMMB2rD4hyopOxbW0zWNBW8Wr5iR8UUtXmAfcni0sgZE2+3ZsOaCA0zR63pvY5G
         QGJivJbgGvfDdz19rvwd2XsqI1HHsKqPTne1ksxZqZuPT2VriF0iynhLqjSqHFYV1Whw
         RN2w==
X-Gm-Message-State: AOAM533/JTYPhG51udSPsGssmN2IbPwqfL8VbtuKRUBCP1717IfZ+SY5
        Q+QzJD/Kr23j5s9yHmy4DRH2HJuC+lCO64Vd6X8=
X-Google-Smtp-Source: ABdhPJzzoLJFMQ4alcuBRmHtdPalUaJmdVZ78F7JZVB0X5csppJ/gV++8aI0k5Uyahva8aCxWBh/QXUVCQ7XqBj4ADw=
X-Received: by 2002:ac2:4f82:: with SMTP id z2mr3859691lfs.39.1624544631656;
 Thu, 24 Jun 2021 07:23:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:651c:1a1:0:0:0:0 with HTTP; Thu, 24 Jun 2021 07:23:50
 -0700 (PDT)
Reply-To: tutywoolgar021@gmail.com
In-Reply-To: <CACGGhyQDhNjM7pPW0wTzyn7LBiGmaBAqeP5L66y=E2TL4U9+PQ@mail.gmail.com>
References: <CACGGhyQDhNjM7pPW0wTzyn7LBiGmaBAqeP5L66y=E2TL4U9+PQ@mail.gmail.com>
From:   tuty woolgar <assihbernard6@gmail.com>
Date:   Thu, 24 Jun 2021 14:23:50 +0000
Message-ID: <CACGGhySfq0srNZWEFNw3jpUKKLD5Gkraso0upje=6284TbBi2g@mail.gmail.com>
Subject: greetings,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

My greetings to you my friend i hope you are fine and good please respond
back to me thanks,

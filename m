Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3301A36331A
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 04:02:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237181AbhDRCC7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Apr 2021 22:02:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237179AbhDRCC7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Apr 2021 22:02:59 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2477DC061761
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:02:32 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id s22so708774pgk.6
        for <devicetree@vger.kernel.org>; Sat, 17 Apr 2021 19:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=6EOi5sET7q+6tX+yWu9fy29pnrjG4MRp6umPPzPq8io=;
        b=kQdHmo7fIHeibHQS2AiHL5WIEamrqHqoa5ga9rM6sBSydleBeM1dLI9GzuIbNwwk7e
         N1a9fJzZeV7DcggjCVDDgQlGVDWhApORdsaooAYTLf1SKT4IJo3pwIMJDhFIcBSNck11
         TPhC1CTjYTPWF5/yyniLiCg9i1b0a5kBZ20oA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=6EOi5sET7q+6tX+yWu9fy29pnrjG4MRp6umPPzPq8io=;
        b=hfD/6LsqQL5G6TEilN9sG7eirFaRzvw/lGzT/bLgJzB+DErNTw8gKJuOx3iCB2gwbh
         XoJtE5IayD8COpBxE2hCIZ5JhCoBVV2pnr6no89xvWKDrI1RyrKDbsgjgx8TwJ1W5j6I
         OaiZmnYlcSjW3B6xFFhdCoZP07v8Dcd3MUzJgefVUutIiFU5vKbAJFb3iTwuWkkJgqTq
         Cx/N/uRdjF2jpVM/5wi7CV1gCoZWnAFvR+kuYIxYGuGe3VQOvKK+F+2z6qJ6xXWsAsaS
         tM64lhhTpnbaYZsuzCaSiK3LEcbe06QZG2yVZGDu+AB7gvUu8NtkvVDESmZWeWNIUA8B
         p+1A==
X-Gm-Message-State: AOAM531wPnvIstNAS479WNiXjLt8jifu6aSpYgNyWbVN9WpJsCCC/kiE
        nWt7uz0bXhFSzZAMFVhhCs6wwlL6kfMTFw==
X-Google-Smtp-Source: ABdhPJyWyBxeFPd6VFmIMy39I/7tDy2USGMAbTQjQx4SczppNkalB7KraRsr2ZRfH7mjwvEDDynFsw==
X-Received: by 2002:a63:f451:: with SMTP id p17mr5559622pgk.150.1618711351734;
        Sat, 17 Apr 2021 19:02:31 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:e47c:5232:82d9:6d3f])
        by smtp.gmail.com with ESMTPSA id fw24sm10077679pjb.21.2021.04.17.19.02.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 19:02:31 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1618574638-5117-9-git-send-email-sibis@codeaurora.org>
References: <1618574638-5117-1-git-send-email-sibis@codeaurora.org> <1618574638-5117-9-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 08/12] arm64: dts: qcom: sdm845: Use QMP binding to control load state
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     rjw@rjwysocki.net, agross@kernel.org, ohad@wizery.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org, Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, robh+dt@kernel.org,
        ulf.hansson@linaro.org
Date:   Sat, 17 Apr 2021 19:02:29 -0700
Message-ID: <161871134996.46595.11931692864291913969@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-04-16 05:03:54)
> Use the Qualcomm Mailbox Protocol (QMP) binding to control the load
> state resources on SDM845 SoCs and drop deprecated power-domains exposed
> by AOSS QMP node.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

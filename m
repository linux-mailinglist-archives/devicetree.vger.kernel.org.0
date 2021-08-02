Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C47F33DE1D4
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 23:48:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230313AbhHBVsV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 17:48:21 -0400
Received: from mail-io1-f51.google.com ([209.85.166.51]:38516 "EHLO
        mail-io1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231635AbhHBVsV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 17:48:21 -0400
Received: by mail-io1-f51.google.com with SMTP id a13so22021300iol.5
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 14:48:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DRZT/Y/tEwpvej3j7tLQEp+mxZSAeFbE9X4u2N1mSUo=;
        b=VPsSc9cuUtxTQTBpU2UrXbFtFIkSSLTFi2DniYBDl+k2f7uvowCOMkyZm2acsHRbxp
         bn1gHFY/F1jand2FDvt+KWxYJyA2olHjWq09dRozgMPjAxNpp1vwRb1pHoIJLZ9qI5po
         92RWS4u7IQE17++0TEhHisEX92vHXarquxbZnfan1iuGF7VV12qCvpcxxPJyeYJvwpEv
         D0CBr8yHQDBo24UymGpVXZ0YQrtcfVbdV01w3sFHMGhz2eFWLV7eWXgr71NgN86GKUrs
         PgcCXvCbHzDYOwh2lcM8plKUKMuMtOrGkTmschIXipL7EZAVF9W/UBst259DMbjWQsM2
         nGQw==
X-Gm-Message-State: AOAM531l1GijRuiNrKAqP95+Fqp6wtMmtIvY/XVu+S97jFzqm59y7jEh
        +hsj6MmJg5Z9a+dmyKeg7CN61vHmcA==
X-Google-Smtp-Source: ABdhPJxTtcdFDsFbi4pTUGvgnzBaDyiPt+dXhLsds9X95oWdzQ7Q9IXehGjVK1qrzg3GUpNWugKePQ==
X-Received: by 2002:a5e:dc48:: with SMTP id s8mr250899iop.133.1627940890423;
        Mon, 02 Aug 2021 14:48:10 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id a14sm6719969ilm.64.2021.08.02.14.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 14:48:09 -0700 (PDT)
Received: (nullmailer pid 1676096 invoked by uid 1000);
        Mon, 02 Aug 2021 21:48:08 -0000
Date:   Mon, 2 Aug 2021 15:48:08 -0600
From:   Rob Herring <robh@kernel.org>
To:     Baisheng Gao <gaobaisheng@bonc.com.cn>
Cc:     robh+dt@kernel.org, kuba@kernel.org, davem@davemloft.net,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] Documentation: fix incorrect macro referencing in
 mscc-phy-vsc8531.txt
Message-ID: <YQhoGNTJfcHkyWlQ@robh.at.kernel.org>
References: <1627488086-200263-1-git-send-email-gaobaisheng@bonc.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1627488086-200263-1-git-send-email-gaobaisheng@bonc.com.cn>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 29 Jul 2021 00:01:26 +0800, Baisheng Gao wrote:
> Modify LINK_1000_ACTIVITY and LINK_100_ACTIVITY to VSC8531_LINK_1000_ACTIVITY
> and VSC8531_LINK_100_ACTIVITY respectively in the example of ethernet-phy node
> according to include/dt-bindings/net/mscc-phy-vsc8531.h.
> 
> Signed-off-by: Baisheng Gao <gaobaisheng@bonc.com.cn>
> ---
>  Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!

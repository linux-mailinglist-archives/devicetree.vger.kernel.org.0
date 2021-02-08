Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9E7E31425E
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 22:55:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234858AbhBHVza (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 16:55:30 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:39589 "EHLO
        mail-ot1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230344AbhBHVz3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 16:55:29 -0500
Received: by mail-ot1-f49.google.com with SMTP id d7so13381768otq.6
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 13:55:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4rq3iSsIL7iUk3FNLDWyFOp8YEmpcmaj3S7tUALszS0=;
        b=cIW8ZLCbTQSJlVYMbDnAsmbqWX+6Hs8UpdJQ9CnKUT4mQ55FaoSZac7nIrYQrBBk0K
         A2acv81IxZ9kPHKqLvpiMSYaSjK8eRpghkfb5YV8e32O0kLo0FInKd8giYqg1KO/qAnv
         t67BbYvv65Oo3C1UNkjHdv9OENekLDrsDK1cQMnabDMQbbHTFwgfDj9QB69QpSm7HzQs
         5DPKgdmJdQG3p4MPSqe7vIgQPcVNpwfsh/TnGbA5n9JvgJQ7+Utf4hZhxxrl5u5wCh05
         B+LEU6Wdp1148B+ql59n656ksHGRYmpRIP5SU4u20pn7auZVdZ4ivqSxj7Q7NiwQOxoo
         ENgw==
X-Gm-Message-State: AOAM532mCRtyhcyO/EQrKRYF2UGFCuY2iS09WaS5TFRwDAErTDNgPDIS
        5wAF50/O4v3PWSq0xwY5VFXH5kBivg==
X-Google-Smtp-Source: ABdhPJw9l46+xGzi/ngU7yTiHTzglSBNxVv8ZY8ID86E2bpTKcgjQ5x24sV8PI06QDCbRSm/Ib+qYA==
X-Received: by 2002:a9d:22c9:: with SMTP id y67mr13788125ota.247.1612821288544;
        Mon, 08 Feb 2021 13:54:48 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x187sm3924658oig.3.2021.02.08.13.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Feb 2021 13:54:47 -0800 (PST)
Received: (nullmailer pid 2089194 invoked by uid 1000);
        Mon, 08 Feb 2021 21:54:47 -0000
Date:   Mon, 8 Feb 2021 15:54:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] Fix dtbs_check warnings
Message-ID: <20210208215447.GA2085680@robh.at.kernel.org>
References: <20210116030156.15726-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210116030156.15726-1-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 16, 2021 at 12:01:54PM +0900, Damien Le Moal wrote:
> Hi Rob,
> 
> A couple of patches to fix make dtbs_check warnings about identation.
> 
> Thanks !

Thanks, but Linus already picked similar fixes.

Rob

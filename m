Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 42C5E46BD8
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 23:27:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726071AbfFNV1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 17:27:17 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:41097 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725809AbfFNV1R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 17:27:17 -0400
Received: by mail-wr1-f68.google.com with SMTP id c2so3915574wrm.8
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 14:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:message-id:in-reply-to:references
         :mime-version;
        bh=Uc2f6CQXrYqQEI1IDSyVk4ypG7EglesOk7GUtbp0rYQ=;
        b=lmIVJ76ozWQkcY0V1jkobL62yLQMvrEWL08HGyPohsnZKsfkecN4dl/mbRE3VsX3yh
         OiRDzXUTpYRaowIhTahm22tj7biPfwRU3KX9mcP/aqps/pDy77iPhuSqMcRALQEK6LRp
         RfWLZlrd8uHqxRtk9bbnJpALqxBuGbO0cVbh/CmSkD+8D7nXNNmpdxGb8DOcXe0BrCz1
         Z+UUK1SMwiKXybyodFl3PXip69MgA+BRYHhSaNloCfTNv7PS3lx968IYT8Zcf0IH3eVH
         ZrGg0AhI8p+0vTDvW6LHwVSpJI7LhRKFG9WI0hkZOeqkmthJKAbr4knM443MVcvMsfT5
         fm0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
         :references:mime-version;
        bh=Uc2f6CQXrYqQEI1IDSyVk4ypG7EglesOk7GUtbp0rYQ=;
        b=NpTezy/ERK1d1UKDgUzeboZeLGytJfrkPduPdxLGhQgeV5UiLkRoCj20T2YKo3+lM5
         CYio/cvPJvcOwuGSPh3eiYHP440tWCTKrHtwIc1klbg4rB1/K2qmlNVcm6d1E4PFYpKf
         S8AW/rFUq11Qx9BRdzS9nrM7S6CYellJ6PIu+V9Au5sNIpIRhQe7d+gbYZfiPXXWe1V8
         T3x5rZMozK3DvcHYTyof7s/lxUH32BTYS38gLeePeCTZifbcLJqZ2p7HYbBOAq8OXCl4
         HeeRJOtIE4KzTL6dtOkmNQsg64v88gcE0zRHwaJGNfmsEDnvi9Ijo+cCCDQjnceZbgYg
         HZeQ==
X-Gm-Message-State: APjAAAXqLJbIR+Zc6JOzkivHCQJTjRtgSXokqN2RqggxXy/KJZjAmojC
        P5KDBMKS1pof7NES/JhWhXc=
X-Google-Smtp-Source: APXvYqwHIKIzJh16kp2/Ta+Cp14JGaM4ketsZocnKsCF7KMCunIdRIWs8bJiBwtvJUYTHx3baFU4/g==
X-Received: by 2002:a5d:5303:: with SMTP id e3mr2160114wrv.239.1560547635129;
        Fri, 14 Jun 2019 14:27:15 -0700 (PDT)
Received: from X555LD ([2a02:85f:51e:5d00:f1ab:2da6:d378:d0de])
        by smtp.gmail.com with ESMTPSA id x16sm2940166wmj.4.2019.06.14.14.27.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 14 Jun 2019 14:27:14 -0700 (PDT)
Date:   Sat, 15 Jun 2019 00:27:11 +0300
From:   "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
To:     Peter Geis <pgwipeout@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Message-Id: <1560547631.1367.4@gmail.com>
In-Reply-To: <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
        <1559912295.22520.0@gmail.com>
        <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> The big change was actually snps,aal.
> As per the TRM, DMA channels not address aligned have severe
> limitations, if they work at all.
> 
> Setting the DMA ops as address aligned fixed my 30mbps TX issue when
> combined with your snps,txpbl = <0x4>.

Honestly, I don't notice any difference either way with aal. So what 
happens without it? If You only use the 0x4 txpbl and having removed 
thresh dma mode, (2 things then) do you get bad tx?



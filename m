Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5A2A2BABEA
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2019 00:21:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729143AbfIVWVE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Sep 2019 18:21:04 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:40041 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726382AbfIVWVE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Sep 2019 18:21:04 -0400
Received: by mail-pg1-f196.google.com with SMTP id w10so6824977pgj.7
        for <devicetree@vger.kernel.org>; Sun, 22 Sep 2019 15:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netronome-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=PmAznyfs4k+mWd//xBrPme3TcumsUBoHQjEZq6u+NLY=;
        b=Q9CxQCZVN3CeKim3T14DI+dzH5PlCDTA8QmbsW+C8eax7IIA/NB0aFCLOE5uEMlnah
         n9HfkK054QH0pzmBa/MaaPHryLTCxiQvGwyx9m2DBJ3+fWXwG4tZ1JBoHBYs79JyChbx
         r5rFDF448s/NfZ2lrFLEI/35LniKtZVDGfAnyeOltNGUbu+hXauDlNLnNAaQqWncuzo2
         +3937Vc7WBUdbsp3LzrmK2ZIuYecnYyYnVMqeOVgiI0Tg/28mg73wkAS2nR2q0eakRY3
         9/YK/KVHUUOG6XAHJmFirHgZxtOEbFencrEJwS4yKpWhp/Wx/AxSLIA3VX7LS190gJnR
         PoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=PmAznyfs4k+mWd//xBrPme3TcumsUBoHQjEZq6u+NLY=;
        b=CvA0/tG5t2NmBceuJEqUKPT9zcyZ9xNVeIHxXOCp6Fa9nAIOe6VJK4YJ1ZIgfxUuJm
         34xCMeBbDEE3+X2W+WiwbUf1hDrPrWWQ6iHCCRNnBGD2i4hZlusYhXfmH7KYCqE9lPGl
         FBDT09LwuqyCus4mz5ssrM9speBYsVftMxjqaGCQYQ+EmJ81ntz4v4Yf0gxBl+m3QNAN
         CqMfCF7JKB1prCYTyBO1GtGJ1IbJnMsOD9zyHeNhdNYzw5JapygE5vYxOrS2X1ox0qQA
         ve/TZLxTf3CoMkLVn1WS+z3Wcd0o+EcduSFlmdYgusq4Qyoz+QwNs/mnde6V6gJ7YjaB
         v7sQ==
X-Gm-Message-State: APjAAAXk/gdt6SNOElAODO+lQtrAYFZEKDKKWMPSo0FfF7dVA9VFUTIS
        iCuRH3hWfeEvjy1wJ0/FmAPmUQ==
X-Google-Smtp-Source: APXvYqzciIn5+C8G7UZYhYgLD06dOmlQZq70XrUrVD2u2KT92kUx/KmLzyi/sFi09I3djSRu2p/rmQ==
X-Received: by 2002:a17:90a:8087:: with SMTP id c7mr17644769pjn.56.1569190380757;
        Sun, 22 Sep 2019 15:13:00 -0700 (PDT)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net. [73.202.202.92])
        by smtp.gmail.com with ESMTPSA id r187sm7877357pfc.105.2019.09.22.15.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2019 15:13:00 -0700 (PDT)
Date:   Sun, 22 Sep 2019 15:12:57 -0700
From:   Jakub Kicinski <jakub.kicinski@netronome.com>
To:     Christophe Roullier <christophe.roullier@st.com>
Cc:     <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
        <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
        <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>,
        <andrew@lunn.ch>
Subject: Re: [PATCH  0/5] net: ethernet: stmmac: some fixes and optimization
Message-ID: <20190922151257.51173d89@cakuba.netronome.com>
In-Reply-To: <20190920053817.13754-1-christophe.roullier@st.com>
References: <20190920053817.13754-1-christophe.roullier@st.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 Sep 2019 07:38:12 +0200, Christophe Roullier wrote:
> Some improvements (manage syscfg as optional clock, update slew rate of
> ETH_MDIO pin, Enable gating of the MAC TX clock during TX low-power mode)
> Fix warning build message when W=1

There seems to be some new features/cleanups (or improvements as
you say) here. Could you explain the negative impact not applying 
these changes will have? Patches 1 and 3 in particular.

net-next is now closed [1], and will reopen some time after the merge
window is over. For now we are only expecting fixes for the net tree.

Could you (a) provide stronger motivation these changes are fixes; or
(b) separate the fixes from improvements?

Thank you!

[1] https://www.kernel.org/doc/html/latest/networking/netdev-FAQ.html

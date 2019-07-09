Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4259639DB
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 19:03:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726341AbfGIRDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jul 2019 13:03:36 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:41636 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726284AbfGIRDg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jul 2019 13:03:36 -0400
Received: by mail-io1-f65.google.com with SMTP id j5so25353335ioj.8
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 10:03:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=0PRQV1h01VSnXO7p1jiGRaa3LHaTGuGr/hi69YvxKb8=;
        b=Vx9VIP3TqG7lMrF9fcrOTSMbmcJw1Dv87ljgwA7rled63/bI93KnL6oWBOpHv0pDmr
         44vAiSeSJ3nvL14k3upyTO0ZD3uvgTk3ZWYltsLgePKasyQJpQJSBlaXW9SyytZZd7Ve
         WwnYvMSgPRj/i9c7Mu/231EWUzOBbWwUNAHectPrGQQ6CzIcaufuBRv57Q5k2AqBCGKf
         DPLJ+HaHfTJRB9k7XhoQthnWEa8/vs6U+MSWPhguoyd/UjuzLM0/Ad9+a7+UgTY8a5yc
         O6vS/YCZQ0NefnLfRcHqGA87EXLXL5lIiuj+5GepnxgqLJxKvMBTixizHlaXY50qR4tV
         iJBg==
X-Gm-Message-State: APjAAAUq12r9BEbkaDWGOGkRGRtObG/XbGWB+mNiMTKadGJfXSCvE9Vx
        W4i8PBT48Q3SB5QLDKoAbiQxL7w1FA==
X-Google-Smtp-Source: APXvYqzAi/TybgN9SP/8YqcbDSuKeU8Tx9sFm9tzFu1cwz6VaHeNAfpnmFTlnxxrzFQCmQLyus9IJg==
X-Received: by 2002:a02:13c3:: with SMTP id 186mr28606534jaz.30.1562691815051;
        Tue, 09 Jul 2019 10:03:35 -0700 (PDT)
Received: from localhost ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id b20sm16803274ios.44.2019.07.09.10.03.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 09 Jul 2019 10:03:34 -0700 (PDT)
Date:   Tue, 9 Jul 2019 11:03:32 -0600
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings
 to json-schema
Message-ID: <20190709170332.GA14545@bogus>
References: <20190618212229.32302-4-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190618212229.32302-4-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 18, 2019 at 03:22:28PM -0600, Rob Herring wrote:
> Convert RDA Micro SoC bindings to DT schema format using json-schema.
> 
> Cc: "Andreas Färber" <afaerber@suse.de>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Andreas, Update the license on this one too to dual licensed if you 
> want.

Ping.

> 
>  Documentation/devicetree/bindings/arm/rda.txt | 17 ----------------
>  .../devicetree/bindings/arm/rda.yaml          | 20 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 21 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/rda.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/rda.yaml

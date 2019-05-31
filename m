Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 42408317EA
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2019 01:27:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726701AbfEaX1v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 19:27:51 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:36846 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726635AbfEaX1u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 19:27:50 -0400
Received: by mail-pg1-f193.google.com with SMTP id a3so4857676pgb.3
        for <devicetree@vger.kernel.org>; Fri, 31 May 2019 16:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1mBjmLwOKlNkyYhM6oxRhsf42lMAXU/xAGOi1IdZboQ=;
        b=ZNOteqQLyqgc+QbRl7AXNIxJGN4xjDTgG6lWt6T6hJIAi2uw3z3Flh39L0EupY/Gdy
         aRQu8htEcM2guXKL3DiQ4okSSGGyunEAl9Vs6GRc1UEOfPAiDmQ8zPwoUqSNG0OYQVV6
         EIib45uFU25OiqwIdyyh8xrqPokchZdfmTrwCmyplfHfbLDWbuuuOwUb+ovvtbfvhNA1
         zjW6vzLAyANZQjQVAtJnOlbpyMIjpq149dUyltnV5NgU5IpF1Yk5dIVTcoGsrgrl27Ql
         8PicUE4+rTtZi9T5oo0W1VHdKG2BtaIZImEFJFnrAmzM0oJR7kaWUvZ22S1Cz16LJR/k
         aIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1mBjmLwOKlNkyYhM6oxRhsf42lMAXU/xAGOi1IdZboQ=;
        b=G2AVRZhItzOjE/VMMZkJ8E0Ir9qqJXJv7pjM3a4bDk0pcxWzMqkFdBAZDwQZiXKl0c
         Gj6QNdVeOdr7+UxSWLtLyKYBJBoePGB7SxlhmK3UsaWdEPRRuYcc+xgtiLIiodwU1m+B
         lp43NfROBlzVnEnbUaI0Bu6JZk/M5s/OpLMq9mKIXYGhX+Ik86CU+fpOSNz9kC4ESV4B
         bVXEMTCa2PxMvDvqywQ0G6Jn6qvGX/4Uk6LK9l6+SkpqlN5PVcDg+UdaBam+8NTqmuwf
         f7Vgeh9TDdjivw/ZdQSA5ONZC1h5gy7UwYUqSPdKPCNYJmOSO8g464TIBR1A7YagHSaF
         bGog==
X-Gm-Message-State: APjAAAWOPT1kmLUs9m3xWY8d5+/PCf8kMCvfqlf9YyZIh9DsKWsXXNJL
        h5GTADoBgXMCH7aNmBrlt05RlQ==
X-Google-Smtp-Source: APXvYqw/ryB+xTJ5eNyo0R0Rz5FbaRSXOb+hJAMPW6Ub79YQuTrjFf0b/mvOzSK2WWNJ4P0EduX3Cg==
X-Received: by 2002:a17:90a:7147:: with SMTP id g7mr12603555pjs.42.1559345269878;
        Fri, 31 May 2019 16:27:49 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id u1sm7196808pfh.85.2019.05.31.16.27.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 31 May 2019 16:27:49 -0700 (PDT)
Date:   Fri, 31 May 2019 16:27:46 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     Alex Elder <elder@linaro.org>, Dan Williams <dcbw@redhat.com>,
        David Miller <davem@davemloft.net>,
        Ilias Apalodimas <ilias.apalodimas@linaro.org>,
        evgreen@chromium.org, Ben Chan <benchan@google.com>,
        Eric Caruso <ejcaruso@google.com>, cpratapa@codeaurora.org,
        syadagir@codeaurora.org,
        Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
        abhishek.esse@gmail.com, Networking <netdev@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-soc@vger.kernel.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
Message-ID: <20190531232746.GA25597@minitux>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 31 May 12:19 PDT 2019, Arnd Bergmann wrote:

> On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org> wrote:
> > On 5/31/19 9:58 AM, Dan Williams wrote:
> > > On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
[..]
> > So basically, the purpose of the rmnet driver is to handle QMAP
> > protocol connections, and right now that's what the modem provides.
> 
> Do you have any idea why this particular design was picked?
> 

From what I've seen of QMAP it seems like a reasonable design choice to
have a software component (rmnet) dealing with this, separate from the
transport. And I think IPA is the 4th or 5th mechanism for transporting
QMAP packets back and forth to the modem.


Downstream rmnet is copyright 2007-, and I know of interest in bringing
at least one of the other transports upstream.

Regards,
Bjorn

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7545F39C30F
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 23:59:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229746AbhFDWBi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 18:01:38 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:36547 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbhFDWBi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 18:01:38 -0400
Received: by mail-ot1-f47.google.com with SMTP id h24-20020a9d64180000b029036edcf8f9a6so10528193otl.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 14:59:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IRxkAWyQwbiyI8QL5oF+y9WtZFbe/svsmVtxO0HxQeg=;
        b=Ffda8qeeTK+ff++IO05YxSj7fNxh6J5+TLptNGyhGS648ubRhpo8Yh1EzvkpJoRsB7
         G/a3KExpcBLC28udHNUc79jmiQQ4Qc6kF0FKgmvcuGG1J+00qXx/cbfHL3TrNOYSdr10
         OHJ5VAShCkKyzi0QZj5yMoUwR55FbWEWbGZwE+Oe2XuKk9oVTC47ZBpzKPZjxL6hfG10
         uGACM6sohvLnT/821qJAqj5tXmq2yBf12ExG6qIVj+QiSffBtcMFBDGWQmm0LEqp1V0b
         I9az893JgRD8f+gvINRLRAfk/Dur31dvCQnP/lECnMXA2h42nJkhPfHZH0jvh509mdXX
         4KsA==
X-Gm-Message-State: AOAM531LPbVDHmfOrdnGUuOSgCvuZIdSnd6PLbK9/pgg1ObimFM7SBfb
        usY4d6osNJ0sIN4cAiUVCQ==
X-Google-Smtp-Source: ABdhPJyRoEnYiTREieEv/0/sl1sHqIgWzbZzb+Iy+hqKu/tKWrozYTAbkSQja2DaP77wK89DNYaUPA==
X-Received: by 2002:a05:6830:90f:: with SMTP id v15mr5420015ott.332.1622843975602;
        Fri, 04 Jun 2021 14:59:35 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i133sm721146oia.2.2021.06.04.14.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 14:59:34 -0700 (PDT)
Received: (nullmailer pid 4001024 invoked by uid 1000);
        Fri, 04 Jun 2021 21:59:33 -0000
Date:   Fri, 4 Jun 2021 16:59:33 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/6] dt-bindings: mailbox : arm,mhu: Fix arm,scpi
 example used here
Message-ID: <20210604215933.GA4000944@robh.at.kernel.org>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
 <20210604205710.1944363-2-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210604205710.1944363-2-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 04 Jun 2021 21:57:05 +0100, Sudeep Holla wrote:
> Once the arm,scpi binding is converted to YAML format, the following
> errors will be seen when doing `make DT_CHECKER_FLAGS=-m dt_binding_check`
> 
> 

Applied, thanks!

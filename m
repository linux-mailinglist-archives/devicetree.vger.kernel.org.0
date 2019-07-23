Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6956A70F18
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 04:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727959AbfGWCVI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 22:21:08 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:34014 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728676AbfGWCVI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 22:21:08 -0400
Received: by mail-pg1-f194.google.com with SMTP id n9so12359238pgc.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 19:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BnCBC+zUlqDIIAOvfSKLBUp5eSfkGPiVUglDWmp/gR8=;
        b=PE4Zoq08LGucIhGqujRu/QuMdngn1fAHXLyBPyBVeoeIL4QaDln7Ag7evhB/1vWITd
         Iz12quvXzcyb3F9x+U/2kD6J6lvzx45cJRvDOQN7WHsyVubQCP7ZmT0w4LahjIviE90q
         +LhBeVkYuO1tct6jD364mH4L3/nxbWossI1aMQ2I6CU+bIe4H29fqE/AOWIM/4moyv1r
         lUQ+HBkTyS/CeRFtkgjmjXa+6djuHjWQl7nXHpBFaAvpCnA/GQuTok5Zgh8PPO9TFTPg
         z1R8+qqgg2s+rxFI/xaRAcRDzP623lGRAOHfZewEhKDwKB9SdOUHHD+vUrrIJDWZYx0a
         A5+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BnCBC+zUlqDIIAOvfSKLBUp5eSfkGPiVUglDWmp/gR8=;
        b=Ev7FQ7s/Hs8N+Ez7OE4lDF4vtA07uDl9+urjOJcFNAKhIwxSWoUEjWu6o0QQNhCTw8
         orVSYf+oiq8O+Gkqe/84rj8DifVIr6lZ6uW1RL+bP+9WEmNBpE5HIN4h2vO28QNIWtIr
         rRfMx36GwdeAj28UaK8HAJow7Qn+MoHiT8Cm1eK8ajIlEzSdWFgCq7qMhJGQb5WwDAoi
         xuApD0gPwGyP8c6PAav9lmddDzthwLvHSLhGwX9gbve0maRfKBbbZYUACYLqjhs3lSfr
         yneERxSHbVt1cqoz+O65JIFkzahza2AwrWHGWqgo3Q78+e81kIfqUSwXZiOyl7KxZP1Y
         lYdQ==
X-Gm-Message-State: APjAAAW5KjIlbGEpwCI1RuExLyfKY+SQoWw+u+LdED2jAFhJ4SwmuCQ5
        V7Xmyx9PAov40aC1pom5/yW9IQ==
X-Google-Smtp-Source: APXvYqxL2jAvzgpf0MMdvr4SEuFbkxGKEEoNZbidbXR7lRbw9PpJt9A0P4ipBQJ+Wf4gE23lgoCWYw==
X-Received: by 2002:a62:e801:: with SMTP id c1mr3287708pfi.41.1563848467126;
        Mon, 22 Jul 2019 19:21:07 -0700 (PDT)
Received: from localhost ([122.172.28.117])
        by smtp.gmail.com with ESMTPSA id p2sm55113862pfb.118.2019.07.22.19.21.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 19:21:06 -0700 (PDT)
Date:   Tue, 23 Jul 2019 07:51:04 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>,
        Georgi Djakov <georgi.djakov@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        vincent.guittot@linaro.org, seansw@qti.qualcomm.com,
        daidavid1@codeaurora.org, Rajendra Nayak <rnayak@codeaurora.org>,
        sibis@codeaurora.org, bjorn.andersson@linaro.org,
        evgreen@chromium.org, kernel-team@android.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/6] dt-bindings: interconnect: Add
 interconnect-opp-table property
Message-ID: <20190723022104.m3zx4w7i6ki5cmgd@vireshk-i7>
References: <20190703011020.151615-1-saravanak@google.com>
 <20190703011020.151615-6-saravanak@google.com>
 <20190722233927.GA1353@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190722233927.GA1353@bogus>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-07-19, 17:39, Rob Herring wrote:
> On Tue, Jul 02, 2019 at 06:10:19PM -0700, Saravana Kannan wrote:
> > Add support for listing bandwidth OPP tables for each interconnect path
> > listed using the interconnects property.
> > 
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  .../devicetree/bindings/interconnect/interconnect.txt     | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/interconnect/interconnect.txt b/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > index 6f5d23a605b7..fc5b75b76a2c 100644
> > --- a/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > +++ b/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > @@ -55,10 +55,18 @@ interconnect-names : List of interconnect path name strings sorted in the same
> >  			 * dma-mem: Path from the device to the main memory of
> >  			            the system
> >  
> > +interconnect-opp-table: List of phandles to OPP tables (bandwidth OPP tables)
> > +			that specify the OPPs for the interconnect paths listed
> > +			in the interconnects property. This property can only
> > +			point to OPP tables that belong to the device and are
> > +			listed in the device's operating-points-v2 property.
> > +
> 
> IMO, there's no need for this property. Which OPP is which should be 
> defined already as part of the device's binding. That's enough for the 
> driver to know which OPP applies to the interconnect.

And if there is confusion we can actually use the compatible property
to have another string which highlights that it is an interconnect OPP
?

-- 
viresh

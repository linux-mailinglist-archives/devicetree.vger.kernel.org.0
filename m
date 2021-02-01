Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC86C30AA77
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 16:08:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231405AbhBAPH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 10:07:58 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:38797 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231289AbhBAPHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 10:07:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1612191951;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=eX0gXpFl1l7y74u4JDLx1FBGVKaeL4IiU69Igj0W6ks=;
        b=F5iB/qDqmNtxhzvMsVCUcmrAvmh+Ci/WS0/BhuO+T3TrzuheTps1nu+GtUPrPc7JmH/imY
        mintmdIkWUG0Ro1xJfB+x3pxOAnEHOWf22oh1eRR7ojIAOkf/mHgHLQaQ77Ee6CPc8QbH6
        acGnXyNw+TyxNuokjJpcRQbwelUaha8=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-5It6SlIwN-WG3iR6bzbKMQ-1; Mon, 01 Feb 2021 10:05:49 -0500
X-MC-Unique: 5It6SlIwN-WG3iR6bzbKMQ-1
Received: by mail-ed1-f69.google.com with SMTP id f4so8035251eds.5
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 07:05:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eX0gXpFl1l7y74u4JDLx1FBGVKaeL4IiU69Igj0W6ks=;
        b=UGAY48m9bRRzXSp8WVedheGjcWYw0O7jEqQ68o4oz7SXllhyLERT0x1cnwOXx3X15d
         0wibi8eM4MkVq5w0GfVnKRu0O6YKuGxSP0Noe+tRARA59Zy/y0JzcWA/UBszzlb2vwRb
         Hr71RfmqZbnnDH80oHEzTy5+o2VJfMO/sY2p0vDeBXht6ROSQUmuz+yJaYaC+1F+Z9Uz
         +rYzjpe0ucJZTDDvF+n+v6fnZl0lxwNvKdzNYZcRC+wsyys04mEuCGtLc8sUxlbzO3kN
         CiyFxMv3GgfQemUlxfRCIlloB56hzVjENJNK9SOOynXKavGU3w+vu6DsHNUMJwjb5W4q
         Ezfw==
X-Gm-Message-State: AOAM531hVSm7UUTkF+BJvH3PvKkBVV/VvYT7ZBBHt5/ycsqk4D0CSUMX
        LSvby1OVZqKk2JYCclneIjlDLDsDKK4FFqQLuDAVi9fH6iuQEGN3r4WqOswlKgvf0v7tErvqnQ1
        Sv0iyG0VLlJ+t8RTRavMqJ8vn5aDuf/17Chi1vlMb4d5u2MQftIt7ek7eSI6zDf4ZlW/UFvnDrw
        ==
X-Received: by 2002:a17:907:f81:: with SMTP id kb1mr11875725ejc.466.1612191948331;
        Mon, 01 Feb 2021 07:05:48 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzK0jclynZ+MrcrVdO9SPTLfEAUH3rSPQUqH1OjcPu4PcBednTnIh0NLUi+4F/vqxS1P/HaPQ==
X-Received: by 2002:a17:907:f81:: with SMTP id kb1mr11875699ejc.466.1612191948164;
        Mon, 01 Feb 2021 07:05:48 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
        by smtp.gmail.com with ESMTPSA id y1sm3026899edq.26.2021.02.01.07.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 07:05:47 -0800 (PST)
Subject: Re: [PATCH v3 0/3] common SVDM version and VDO from dt
To:     Kyle Tso <kyletso@google.com>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        robh+dt@kernel.org
Cc:     badhri@google.com, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20210201133421.408508-1-kyletso@google.com>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <a2f8cdd1-7180-a0af-fadf-b0eae2e117ae@redhat.com>
Date:   Mon, 1 Feb 2021 16:05:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210201133421.408508-1-kyletso@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 2/1/21 2:34 PM, Kyle Tso wrote:
> patch v2:
> https://lore.kernel.org/linux-devicetree/20210131151832.215931-1-kyletso@google.com/
> 
> Changes since v2:
> =================
> usb: typec: Determine common SVDM Versions
> - rename the variable and the functions (remove the text "common")
> - remove the macro
> 
> dt-bindings: connector: Add SVDM VDO properties
> - no change
> 
> usb: typec: tcpm: Get Sink VDO from fwnode
> - use fwnode_property_count_u32 instead to get the count
> - revise the error handling
> 
> Kyle Tso (3):
>   usb: typec: Determine common SVDM Versions
>   dt-bindings: connector: Add SVDM VDO properties
>   usb: typec: tcpm: Get Sink VDO from fwnode

I wanted to point out that I have a somewhat related series "pending".

I put quotes around pending because it has been reviewed quite a while
ago and have not managed to make the time to post a new version since then.

My series is somewhat/mostly orthogonal, but I think it is good
to keep it in mind since it also is about specifying VDOs, but then
for alternate-modes, see:

https://lore.kernel.org/linux-usb/20200714113617.10470-1-hdegoede@redhat.com/

And I think there might be some overlap with the last patch in this series,
although that does not call typec_port_register_altmode(). 

Regards,

Hans




p.s.

I was actually planning on replying to an earlier version of
this series, *after* I posted a new version of my own series,
but I'm swamped so it looks like I will not get around to posting
a new version of my own series anytime soon.


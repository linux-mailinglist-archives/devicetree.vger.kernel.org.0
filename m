Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77E0A3D314D
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 03:30:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233073AbhGWAtc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 20:49:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233040AbhGWAtc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 20:49:32 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6BDDC061575
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 18:30:05 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id l19so128101pjz.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 18:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=f06gqWc2bEaZJ6nbd8VrGNk6zDGVJAhrmVyUATfeuhY=;
        b=uH3LTYq9lKkVh6FySVISF2uXoH17+HO/ef+NS7sXs7p8VhOdVPTkf+xDywOJI7ZGeq
         J5vyXN5sIk5K28aSYCheQLYmLarcrwifRRqWOMDtKPWn4zvvxSsqTA/LMekE9uKmElQt
         WO5XrD/lpIAFXo8o3ZlXZ2RLIn59Lahw6A0UOEnlf43IpUPKvrAWKBWbPmx+otKNLFFa
         cTbOkddzUhdmQKUP9KIBFD+aEtLvw3nJaXWw8iW5F28MT+IBeoNC6LThOpDqosoE+XhQ
         /2s1NQSFVXpy9aIoXoI7voS5KTgATBCgzW+ijmB6nTwYCppDaFbliHaMHs227vBPnrLv
         UQEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=f06gqWc2bEaZJ6nbd8VrGNk6zDGVJAhrmVyUATfeuhY=;
        b=n7p3D9jBTlju/h+0OeeYPkVf6jBhkjG7qnq61mMaLv0zpu9af++oJRn9de9N//uQvv
         Vd2yb+Ja4FS86VnzrknHaz83lVdldjtnJr0r56Po/q3Iept1qlaWUOVhezGkJpnajreB
         j3vknlgjqrzSSBMNce4gjeYi3r0ZTcmaTfvmOwLNsEzZ1wtJdQ1y57fyZPAfVr2Ki5cF
         aeBpUEurCj9cJ2gf+D825dKSDxH9oAQkNlSt0TBkf7UTV4lBwmxqtD+XDKJgcNMczTrq
         9KXQWYJyLO+6vMlGHlDFnucOSTHvCrulk05O5uyJAm4aIaYcELPKKeecG/7zGBq0bsJ2
         sQQA==
X-Gm-Message-State: AOAM530HSgkumSIgQ8X6R/wd1Y0LjozEAwtNsUHK+LqAlEWwSdzHrwZu
        aU28hZls+HFuioTrDFHPj4Z8uQ==
X-Google-Smtp-Source: ABdhPJydmHBLdYGZ806rSsmrNTgmWWvO9B0B1rmVcJM9THK88hoR6AIbtcF5apFDFRDUXuwolLnX+g==
X-Received: by 2002:a17:90a:4586:: with SMTP id v6mr2402677pjg.36.1627003805157;
        Thu, 22 Jul 2021 18:30:05 -0700 (PDT)
Received: from localhost ([106.201.108.2])
        by smtp.gmail.com with ESMTPSA id z15sm35760876pgc.13.2021.07.22.18.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 18:30:04 -0700 (PDT)
Date:   Fri, 23 Jul 2021 07:00:00 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Arnd Bergmann <arnd@kernel.org>
Cc:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:DRM DRIVER FOR QEMU'S CIRRUS DEVICE" 
        <virtualization@lists.linux-foundation.org>
Subject: Re: [PATCH V2 5/5] virtio: Bind virtio device to device-tree node
Message-ID: <20210723013000.h43nfnrrichg6nap@vireshk-i7>
References: <cover.1626947324.git.viresh.kumar@linaro.org>
 <026ad5f274d64d46590623f9f3a04b8abfbe62d7.1626947324.git.viresh.kumar@linaro.org>
 <CAK8P3a0iQ5dt_38Y9j6XCoj=n7YA+cPz7i6mjP24k9WY7QL+oA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a0iQ5dt_38Y9j6XCoj=n7YA+cPz7i6mjP24k9WY7QL+oA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-07-21, 16:52, Arnd Bergmann wrote:
> On Thu, Jul 22, 2021 at 11:56 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > +/* Virtio device compatibles and IDs */
> > +static const struct of_device_id of_virtio_devices[] = {
> > +       { .compatible = "virtio,22", .data = (void *)VIRTIO_ID_I2C_ADAPTER },
> > +       { .compatible = "virtio,29", .data = (void *)VIRTIO_ID_GPIO },
> > +       { }
> > +};
> > +
> > +static int virtio_device_of_init(struct virtio_device *dev)
> > +{
> > +       struct device_node *np, *pnode = dev->dev.parent->of_node;
> > +       const struct of_device_id *match;
> > +       int ret, count;
> > +
> > +       if (!pnode)
> > +               return 0;
> > +
> > +       count = of_get_available_child_count(pnode);
> > +       if (!count)
> > +               return 0;
> > +
> > +       /* There can be only 1 child node */
> > +       if (WARN_ON(count > 1))
> > +               return -EINVAL;
> > +
> > +       np = of_get_next_available_child(pnode, NULL);
> > +       if (WARN_ON(!np))
> > +               return -ENODEV;
> > +
> > +       match = of_match_node(of_virtio_devices, np);
> > +       if (!match) {
> > +               ret = -ENODEV;
> > +               goto out;
> > +       }
> 
> I think it would be better not to have to enumerate the of_virtio_devices[]
> strings, but instead use of_device_is_compatible() to match against
> "virtio,%d". Otherwise we end up modifying this function for every
> virtio driver that needs a binding.

Yeah, will do that.

-- 
viresh

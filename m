Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5772A400664
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 22:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350285AbhICUPj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 16:15:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350177AbhICUPi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 16:15:38 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81DB8C061575
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 13:14:38 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id e186so132339iof.12
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 13:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=klu68g+a7JwyJri/TU9nMjBbX2K7Jipbwhe0jYyf8sk=;
        b=ziYI2mJKwjNp329iJEVAGP6BlhkZHa27nfhbTIin+xD+KTQNggFl7DYmD2x1ZxgiyJ
         YGGRTs/H55ofvjb2frJWB9UCYgzt6JT/gcy2sFwibZ+cBDH69IIXcvKpC3pjl7/TThnF
         btgzc5xpjUGlf15iGenje0FqZMXEdbbvDtIA6Dzsu2inksYvD7RxL0eS4UtbR6AilrgN
         SXVj3TdyfWDu17P1eHWzJXzxGGcaWbbpsd3xuU0zmSFJuVTpXl3EGIKmq+O0HADwa2ja
         Q+upKfBLroioZafyeLANs4waTu0uF5ZELu2D0LoXxCIVvUFS11se0EmofD6+Zf/BOGtt
         0LbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=klu68g+a7JwyJri/TU9nMjBbX2K7Jipbwhe0jYyf8sk=;
        b=Y+LBZSbp4fal0RkkOECQZsqBbF5QODJvsL2jhljne5pdDXjRivWhcxfA/Ps4ICoIpo
         J659BKh8xyMBtKJL1pe60lpFpA9NBPY4Ou4As5F37Ciwa+J3Fl4jiLs3qfYlG11lj7w8
         d0sgBLXocO0jxgZZVYqOkkyshxYY+RIRIbzV/Oi9J5wDOfgXg+v4ZlLbZp2vio+M2eBo
         5nLRnUEA4hVFpH1KgXHa41Ed0vgPf9zIPoAjB+u7s1ZEWeXm+f0bC8872lEh9DPnREHA
         f0Ska3zU8HA9KP6squ4PLbQlpjvmIrLG35PISDvVYhIzKVBK2iurlir4dZOosNhfX0US
         Ir0w==
X-Gm-Message-State: AOAM530ENkhweYkpIcZGld9aTITso4Ye0bcLtBDtawYraVmae+wFDwOr
        F0u6vABvx1qB4wXFgbBr7aNtJOfFQG/NCD4g2nlxpA==
X-Google-Smtp-Source: ABdhPJwCrVb6ACMC2TUuqoNLG0sMEntR7PAVyys15e4JFobZ0E/hWkCtTp8QNOLOXnnsUgatQ6ITY9vTkWKACcd+gtE=
X-Received: by 2002:a5e:9819:: with SMTP id s25mr566253ioj.63.1630700077910;
 Fri, 03 Sep 2021 13:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210831193425.26193-1-gerhard@engleder-embedded.com>
 <20210831193425.26193-4-gerhard@engleder-embedded.com> <874kb21sb3.fsf@vcostago-mobl2.amr.corp.intel.com>
In-Reply-To: <874kb21sb3.fsf@vcostago-mobl2.amr.corp.intel.com>
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
Date:   Fri, 3 Sep 2021 22:14:26 +0200
Message-ID: <CANr-f5zkr90FOQ5did25HM0WRn0RKLmgfJXCkH-Br+0kZZxAKw@mail.gmail.com>
Subject: Re: [PATCH net-next v2 3/3] tsnep: Add TSN endpoint Ethernet MAC driver
To:     Vinicius Costa Gomes <vinicius.gomes@intel.com>
Cc:     David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > The TSN endpoint Ethernet MAC is a FPGA based network device for
> > real-time communication.
> >
> > It is integrated as Ethernet controller with ethtool and PTP support.
> > For real-time communcation TC_SETUP_QDISC_TAPRIO is supported.
> >
> > Signed-off-by: Gerhard Engleder <gerhard@engleder-embedded.com>
> > ---
>
> [...]
>
> > +static int tsnep_netdev_open(struct net_device *netdev)
> > +{
> > +     struct tsnep_adapter *adapter = netdev_priv(netdev);
> > +     void *addr;
> > +     int i;
> > +     int retval;
> > +
> > +     retval = tsnep_phy_open(adapter);
> > +     if (retval)
> > +             return retval;
> > +
> > +     for (i = 0; i < adapter->num_tx_queues; i++) {
> > +             addr = adapter->addr + TSNEP_QUEUE(i);
> > +             retval = tsnep_tx_open(adapter, &adapter->tx[i], addr);
> > +             if (retval)
> > +                     goto tx_failed;
> > +     }
> > +     retval = netif_set_real_num_tx_queues(adapter->netdev,
> > +                                           adapter->num_tx_queues);
> > +     if (retval)
> > +             goto tx_failed;
> > +     for (i = 0; i < adapter->num_rx_queues; i++) {
> > +             addr = adapter->addr + TSNEP_QUEUE(i);
> > +             retval = tsnep_rx_open(adapter, &adapter->rx[i], addr);
> > +             if (retval)
> > +                     goto rx_failed;
> > +     }
> > +     retval = netif_set_real_num_rx_queues(adapter->netdev,
> > +                                           adapter->num_rx_queues);
> > +     if (retval)
> > +             goto rx_failed;
> > +
> > +     netif_napi_add(adapter->netdev, &adapter->napi, tsnep_rx_napi_poll, 64);
>
> I know that you only have support for 1 queue for now. But having
> "tx[0]" and "rx[0]" hardcoded in tsnep_rx_napi_poll() seems less than
> ideal if you want to support more queues in the future.
>
> And I think that moving 'struct napi_struct' to be closer to the queues
> now will help make that future transition to multiqueue to be cleaner.

You are right, I will try to make it more multiqueue aware for future
transition.

> > +void tsnep_ethtool_self_test(struct net_device *netdev,
> > +                          struct ethtool_test *eth_test, u64 *data)
> > +{
> > +     struct tsnep_adapter *adapter = netdev_priv(netdev);
> > +
> > +     eth_test->len = TSNEP_TEST_COUNT;
> > +
> > +     if (eth_test->flags != ETH_TEST_FL_OFFLINE) {
> > +             /* no tests are done online */
> > +             data[TSNEP_TEST_ENABLE] = 0;
> > +             data[TSNEP_TEST_TAPRIO] = 0;
> > +             data[TSNEP_TEST_TAPRIO_CHANGE] = 0;
> > +             data[TSNEP_TEST_TAPRIO_EXTENSION] = 0;
> > +
> > +             return;
> > +     }
> > +
> > +     if (tsnep_test_gc_enable(adapter)) {
> > +             data[TSNEP_TEST_ENABLE] = 0;
> > +     } else {
> > +             eth_test->flags |= ETH_TEST_FL_FAILED;
> > +             data[TSNEP_TEST_ENABLE] = 1;
> > +     }
> > +
> > +     if (tsnep_test_taprio(adapter)) {
> > +             data[TSNEP_TEST_TAPRIO] = 0;
> > +     } else {
> > +             eth_test->flags |= ETH_TEST_FL_FAILED;
> > +             data[TSNEP_TEST_TAPRIO] = 1;
> > +     }
> > +
> > +     if (tsnep_test_taprio_change(adapter)) {
> > +             data[TSNEP_TEST_TAPRIO_CHANGE] = 0;
> > +     } else {
> > +             eth_test->flags |= ETH_TEST_FL_FAILED;
> > +             data[TSNEP_TEST_TAPRIO_CHANGE] = 1;
> > +     }
> > +
> > +     if (tsnep_test_taprio_extension(adapter)) {
> > +             data[TSNEP_TEST_TAPRIO_EXTENSION] = 0;
> > +     } else {
> > +             eth_test->flags |= ETH_TEST_FL_FAILED;
> > +             data[TSNEP_TEST_TAPRIO_EXTENSION] = 1;
> > +     }
> > +}
>
> I liked these tests :-)

Thank you! TAPRIO/IEEE802.1Qbv support was challenging for me and these
tests helped me a lot. My goal was hardware support reduced to the minimum
and error prone calculation/switching stuff done by software.

Gerhard

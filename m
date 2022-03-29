Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D00AF4EA588
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 04:52:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230475AbiC2Cxm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 22:53:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231289AbiC2Cxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 22:53:41 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 851BC1B370B
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 19:51:59 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id y3-20020a056830070300b005cd9c4d03feso11964695ots.3
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 19:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h34tRgLhtbOsVJ1OPkfqGNKfTONMRuk1LxjHuz2UdWw=;
        b=mjyu8zSn0YwPS42kRHB+snvNpOm0Lj51x9HEmkoV5nnGTjLtP79VOZI7jClYa4FIOu
         HYust6PmSN0nRRa5H2OXTHFKuNrLWM20Dw411pVvrmnPbaJA24WQy7X/bPDO/k5zrk77
         mRi9tvAfmL+nRMSfqoQo5OLfnXW3hUyk3ORNDwGCy/DGrI3P0mg4VFeT2Q4PB98IQGqB
         WRDflq9n0iHcyVwLIv5HMEB2X6akQhX4eHZhzG6P7FbR3qjSUCCb37IWL+orBz6UDgBN
         aIV8TN00o8Z0/643llKeF2zbrU2zZn2eA90yvLOB2uLovr8YO7lBNksSPMq/YVcHv+30
         hcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h34tRgLhtbOsVJ1OPkfqGNKfTONMRuk1LxjHuz2UdWw=;
        b=LBzmioiDsyxI946vNOZAgyGYfX5ddylZGgcQ5HZvH875m3iD8sTeGdWYbHPbQbEuSo
         QxT8JabUAOP1O97dTh5ZxeQYuiHkNgIzpDN4WLomeMGBi8OLU2R7tZEzLT0VyIBDrqqH
         L0Wu9aW8hVzHxyYwpQoMXyWB86RbnDMlFZof3qnZ92HxnHG4dSkbLX65uPpt/2/scx/x
         dC/op2WGeiza8H0Zbtv9bgdlhYYWMXHvvIVdjOvKA7cQ9YzM8+S616dPIQUPkMBzkr6P
         fcd8vUmW6m/bagHixuvp6USAZBqPKnt7ZehnVNABeQWFU1KeEJ91MiuGQsnltKfFxMgA
         Gx/Q==
X-Gm-Message-State: AOAM5303rFeOBK00rByU9yAKjDUqvJ2QyH1jZ7/lSlzNRE8uf8BxDSyG
        1t+HmraPpWuQuxY7XK9wxcrAGUS36yg7ft2e7Rbc9w==
X-Google-Smtp-Source: ABdhPJzpHoEjlthdH311NH2geeKWuiu6NnEqzdEU8YB8wkidS/ZQGB8K7clR5ej2P2o7Uexd80K5F5yDNtW0SmtR/10=
X-Received: by 2002:a05:6830:2a9f:b0:5cd:d12c:26ba with SMTP id
 s31-20020a0568302a9f00b005cdd12c26bamr239310otu.297.1648522318927; Mon, 28
 Mar 2022 19:51:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220328123238.2569322-1-andy.chiu@sifive.com> <20220328165839.70f964dc@kernel.org>
In-Reply-To: <20220328165839.70f964dc@kernel.org>
From:   Andy Chiu <andy.chiu@sifive.com>
Date:   Tue, 29 Mar 2022 10:49:50 +0800
Message-ID: <CABgGipWXdqU-+HSu7NqoiHuzxh0MEttx=dfnmmW1WdaFGsOz_w@mail.gmail.com>
Subject: Re: [PATCH v6 net 0/4] Fix broken link on Xilinx's AXI Ethernet in
 SGMII mode
To:     Jakub Kicinski <kuba@kernel.org>
Cc:     radhey.shyam.pandey@xilinx.com,
        Robert Hancock <robert.hancock@calian.com>,
        michal.simek@xilinx.com, Andrew Lunn <andrew@lunn.ch>,
        davem@davemloft.net, pabeni@redhat.com, robh+dt@kernel.org,
        linux@armlinux.org.uk, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> This set not longer applies, please rebase on latest net/master.
Thanks for reminding me. I have rebased it on the latest net/master
and submitted a v7 patch for that.

Andy

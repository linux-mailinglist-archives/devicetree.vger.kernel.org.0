Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6746F509527
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 04:49:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383823AbiDUCwS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 22:52:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378441AbiDUCwQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 22:52:16 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41364BF43
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 19:49:28 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id t12so3537794pll.7
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 19:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=P94H50ZarQqSfjwX6qGlCq6elP0Tf7lTSu8KGyKb+rY=;
        b=NmTYbo6mbyC85rDGus5JqFccbJXfd2GmU3Z5l9EJZY3ikIpv8qzK4CJI1biwBjog68
         uKCnx3g23B7HGglBH11l1vwC6RKGBI76JMUE6V3VmgwGsTvN/d3gM+Vrt2xbYbYfS0mA
         BOnEhCGcIxGV03jm/ELUziu49+6lf6Yev49wJcKMYtMD7pBcoITrNctKx77+8XMpqn8o
         EouXOnWTMnnI8frgbpNBP0F5xc6Uaof23VNi30CipucmraQ/6rbr6rtawk8L5exHiULk
         Bwrvr+QiZUbbUN9YUTsS5Y+LsQ5PyL5H+yztSyURyY/djpYFFEmyal8lzb13zRm6dMFa
         /PXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=P94H50ZarQqSfjwX6qGlCq6elP0Tf7lTSu8KGyKb+rY=;
        b=YeozLU8iAFkqOFXP1dURGXxm6y42+mjfuHJmUil54Fu/gUkT5znryvAZF9ES2DCebJ
         44ELPIiuDijM49Rlg9S+2Amfq8jnP098yD4YB/i5mC1SViDhL1QRg3p71MO04chhRc43
         zwVUNvbeTotN8cut64ngnH3vTbFHf7Dr11R8KhRA9o6HOFhZrc7SXqOKX0byzf0tebw5
         Rsq4lmwo4KQffWsDqVUoFL3HZbmlWkrE1yvdbjq3vKzDcHGqrFw/ViFDvtSmuAnoF0Tl
         FqxSuQF4UBZQys4kNfCxY6ogg8zOHPBu6+ZC+svjlrPmupzC1a+ReVrZMNqsrW9MYX+D
         BuTQ==
X-Gm-Message-State: AOAM533dJWjbFwSBeKLKlmiDW8qlR9T0bVvUmBfh8pqlhF7FBdlHPkD2
        NJ1uzolt0eRUWxMU25YsRJnuxQ==
X-Google-Smtp-Source: ABdhPJzYf8MazJedjnUo1QmWR9gJch9FCr1/4uhLrPs8Uz9WPO7vyXlCpgNvcS+TLPR64gKmBq0U6g==
X-Received: by 2002:a17:902:d303:b0:158:e38d:ca18 with SMTP id b3-20020a170902d30300b00158e38dca18mr22977358plc.167.1650509367634;
        Wed, 20 Apr 2022 19:49:27 -0700 (PDT)
Received: from localhost ([12.3.194.138])
        by smtp.gmail.com with ESMTPSA id m13-20020a62a20d000000b004fe0ce6d7a1sm21685124pff.193.2022.04.20.19.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 19:49:27 -0700 (PDT)
Date:   Wed, 20 Apr 2022 19:49:27 -0700 (PDT)
X-Google-Original-Date: Wed, 20 Apr 2022 19:49:25 PDT (-0700)
Subject:     Re: [PATCH v8 0/4] Determine the number of DMA channels by 'dma-channels' property
In-Reply-To: <CAL_Jsq+5TbfFxD3p4ckvNw=jFweuvjQPRQfjmvPqZJga25o0pA@mail.gmail.com>
CC:     zong.li@sifive.com, vkoul@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, conor.dooley@microchip.com,
        geert@linux-m68k.org, bin.meng@windriver.com, green.wan@sifive.com,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     robh+dt@kernel.org
Message-ID: <mhng-aab8c429-f5cc-42a7-b281-02f4a389e0e3@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 20 Apr 2022 07:25:53 PDT (-0700), robh+dt@kernel.org wrote:
> On Tue, Apr 19, 2022 at 7:18 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> On Mon, 11 Apr 2022 04:43:35 PDT (-0700), zong.li@sifive.com wrote:
>> > On Mon, Apr 11, 2022 at 6:48 PM Vinod Koul <vkoul@kernel.org> wrote:
>> >>
>> >> On 11-04-22, 10:51, Zong Li wrote:
>> >> > On Fri, Apr 8, 2022 at 9:13 PM Vinod Koul <vkoul@kernel.org> wrote:
>> >> > >
>> >> > > On 28-03-22, 17:52, Zong Li wrote:
>> >> > > > The PDMA driver currently assumes there are four channels by default, it
>> >> > > > might cause the error if there is actually less than four channels.
>> >> > > > Change that by getting number of channel dynamically from device tree.
>> >> > > > For backwards-compatible, it uses the default value (i.e. 4) when there
>> >> > > > is no 'dma-channels' information in dts.
>> >> > >
>> >> > > Applied patch 1 & 4 to dmaengine-next, thanks
>> >> >
>> >> > Hi Vinod,
>> >> > Thanks for your help and review. For patch 2 and 3, does it mean that
>> >> > we should go through the riscv tree?
>> >>
>> >> Yes
>> >>
>> >
>> > Hi Palmer,
>> > Could you please help me to pick up the patch 2 and 3. Thanks :)
>>
>> Sorry about that, I forgot about this one.  I just put them on for-next,
>> there was a minor merge conflict but it looks pretty simple.
>
> Looks like you applied patch 1 too which Vinod already applied to the
> dmaengine tree. And you changed the 1st line removing the "# " before
> the SPDX tag which results in:
>
> make[1]: *** Deleting file
> 'Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.example.dts'
> Traceback (most recent call last):
>   File "/usr/local/bin/dt-extract-example", line 52, in <module>
>     binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
>   File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py",
> line 434, in load
>     return constructor.get_single_data()
>   File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py",
> line 119, in get_single_data
>     node = self.composer.get_single_node()
>   File "_ruamel_yaml.pyx", line 718, in _ruamel_yaml.CParser.get_single_node
> ruamel.yaml.composer.ComposerError: expected a single document in the stream
>   in "<unicode string>", line 1, column 1
> but found another document
>   in "<unicode string>", line 2, column 1
> make[1]: *** [Documentation/devicetree/bindings/Makefile:26:
> Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.example.dts]
> Error 1
> ./Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml:1:1:
> [error] missing document start "---" (document-start)

Sorry about that, I cherry-picked them from my working repo which I 
assumed was the same but I guess had some nastiness (including the patch 
reordering).  Then I also ran check in the wrong working repo, so I 
didn't notice the mess.

This should all be fixed.

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C108D6FB9
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 08:49:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726052AbfJOGty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 02:49:54 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:45731 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbfJOGty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 02:49:54 -0400
Received: by mail-ot1-f65.google.com with SMTP id 41so15945223oti.12
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 23:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T6CfSaXg0nXorPrsVxQLsn7XoM958V8S7+Mz58slh/I=;
        b=S2iA/C/4+OsENkaAlPpz4KSMVu9qzTexRyw6DCYaGvSAGECKUiyuflF0cwWn3AbTD8
         ae1G0KOBRcBEsgGqIW6+YC4OrUJFxAhq++JgGKh94tQn27xIeYwXl5mIUUnQniyz53M+
         kKQMhc6EsGc9bqmTjN+SnfspYTG/s38wkDa/7uoqG2VnE0mMRWBR8mwkbpXDcj90xNV5
         Mk54AZFJes4TzuExPnjw06wnhXtUlFDl+13aJwhVGGmzI3jKuoNmo6+fqr/YoIeGGrrN
         Hg76FO1LZQSkRHBuHy5/5T10Z64KmJDgJ9lg/QyJwcJ7Vk7l4q4eWvFZAAnjiop5mCKk
         6lWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T6CfSaXg0nXorPrsVxQLsn7XoM958V8S7+Mz58slh/I=;
        b=eiGhe4WL+Lzl3Hm2PGNMtQlrDv1iuoLmSMMfk3KCJecZaQ77JZisD8/OEsu1YEwOdS
         VeXtcPxxYeG1GUMOgKMifS5q5Mqc8FHimgVsaxgNTsZOjStn90ex7VOY5QBTBDXfRqqV
         s3Nqv8fT91PFlvQEz4MvtcJFt5n1v91/mrpTSRrBVM+pi8M7Fte2A5/rbhCvSYjCYVRB
         exjaZhA8cXEsjATiL0mrCRofNurxIXWFLaMtd92a7F0wZaly/hV3cMrJ/5GpRY01Q6hY
         u8VkUgH2pLnHtaEYWNrDeL1vp+M+Q/i0o8PqWBCBTG0yNxN6Vu1IEzQd6xsN2HznF7IQ
         wUkA==
X-Gm-Message-State: APjAAAVP5t7q3Knd/cnEjSBNakgw/PUnl/lWWKB2lcgb4pBLYUL+0e/8
        aZ/LAM8ZZdWdw/bSOmYPYLTVHCokHA9VM0Td4SKxNg==
X-Google-Smtp-Source: APXvYqzEAMtsxE/4p3+aaNp7zGQyRBxDllJuljqZyw6mK6xH07NcGJ8wt4QeuudB0Uir2EoE7wss597NvwPa+aY4fcY=
X-Received: by 2002:a9d:7f12:: with SMTP id j18mr27602020otq.328.1571122192582;
 Mon, 14 Oct 2019 23:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191014180059.07.I5388b69a7a9c551078fed216a77440cee6dedf49@changeid>
 <201910150924.II2vi71d%lkp@intel.com>
In-Reply-To: <201910150924.II2vi71d%lkp@intel.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Tue, 15 Oct 2019 14:49:41 +0800
Message-ID: <CA+Px+wXEpPbWgsQcrz3YVbH1-3z9Jgy3KM3H8o=O6T3M2Gbb2A@mail.gmail.com>
Subject: Re: [alsa-devel] [PATCH v3 07/10] ASoC: cros_ec_codec: support WoV
To:     kbuild test robot <lkp@intel.com>
Cc:     kbuild-all@lists.01.org, Mark Brown <broonie@kernel.org>,
        Gwendal Grignou <gwendal@google.com>,
        devicetree@vger.kernel.org,
        ALSA development <alsa-devel@alsa-project.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Nicolas Boichat <drinkcat@google.com>, robh+dt@kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@google.com>,
        Dylan Reid <dgreid@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 15, 2019 at 9:34 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Tzung-Bi,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on asoc/for-next]
> [cannot apply to v5.4-rc3 next-20191014]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Tzung-Bi-Shih/ASoC-mediatek-mt8183-mt6358-ts3a227-max98357-support-WoV/20191014-183227
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
> config: x86_64-randconfig-g002-201941 (attached as .config)
> compiler: gcc-7 (Debian 7.4.0-13) 7.4.0
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    sound/soc/codecs/cros_ec_codec.c: In function 'cros_ec_codec_platform_probe':
> >> sound/soc/codecs/cros_ec_codec.c:993:23: error: implicit declaration of function 'of_read_number'; did you mean 'wov_read_audio'? [-Werror=implicit-function-declaration]
>       priv->ec_shm_addr = of_read_number(regaddr_p, 2);
>                           ^~~~~~~~~~~~~~
>                           wov_read_audio
>    cc1: some warnings being treated as errors

The error is caused by EC_CODEC=y but CONFIG_OF is not set:
$ grep -e 'CONFIG_OF.*' -e 'EC_CODEC' config
# CONFIG_OF is not set
CONFIG_SND_SOC_CROS_EC_CODEC=y

>
> vim +993 sound/soc/codecs/cros_ec_codec.c
>
>    973
>    974  static int cros_ec_codec_platform_probe(struct platform_device *pdev)
>    975  {
>    976          struct device *dev = &pdev->dev;
>    977          struct cros_ec_device *ec_device = dev_get_drvdata(pdev->dev.parent);
>    978          struct cros_ec_codec_priv *priv;
>    979          struct device_node *node;
>    980          struct resource res;
>    981          struct ec_param_ec_codec p;
>    982          struct ec_response_ec_codec_get_capabilities r;
>    983          int ret;
>    984          u64 ec_shm_size;
>    985          const __be32 *regaddr_p;
>    986
>    987          priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>    988          if (!priv)
>    989                  return -ENOMEM;
>    990
>    991          regaddr_p = of_get_address(dev->of_node, 0, &ec_shm_size, NULL);
>    992          if (regaddr_p) {
>  > 993                  priv->ec_shm_addr = of_read_number(regaddr_p, 2);

In the case, the of_get_address( ) will get a dummy implementation
(https://elixir.bootlin.com/linux/v5.3.6/source/include/linux/of_address.h#L82)
while of_read_number( ) won't
(https://elixir.bootlin.com/linux/v5.3.6/source/include/linux/of.h#L234).

Rob, what do you think if we add a dummy implementation for
of_read_number( ) if !CONFIG_OF (i.e. after
https://elixir.bootlin.com/linux/v5.3.6/source/include/linux/of.h#L559)?
 Does it make sense?

>    994                  priv->ec_shm_len = ec_shm_size;
>    995
>    996                  dev_dbg(dev, "ec_shm_addr=%#llx len=%#x\n",
>    997                          priv->ec_shm_addr, priv->ec_shm_len);
>    998          }
>    999
>   1000          node = of_parse_phandle(dev->of_node, "memory-region", 0);
>   1001          if (node) {
>   1002                  ret = of_address_to_resource(node, 0, &res);
>   1003                  if (!ret) {
>   1004                          priv->ap_shm_phys_addr = res.start;
>   1005                          priv->ap_shm_len = resource_size(&res);
>   1006                          priv->ap_shm_addr =
>   1007                                  (uint64_t)(uintptr_t)devm_ioremap_wc(
>   1008                                          dev, priv->ap_shm_phys_addr,
>   1009                                          priv->ap_shm_len);
>   1010                          priv->ap_shm_last_alloc = priv->ap_shm_phys_addr;
>   1011
>   1012                          dev_dbg(dev, "ap_shm_phys_addr=%#llx len=%#x\n",
>   1013                                  priv->ap_shm_phys_addr, priv->ap_shm_len);
>   1014                  }
>   1015          }
>   1016
>   1017          priv->dev = dev;
>   1018          priv->ec_device = ec_device;
>   1019          atomic_set(&priv->dmic_probed, 0);
>   1020
>   1021          p.cmd = EC_CODEC_GET_CAPABILITIES;
>   1022          ret = send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC,
>   1023                                     (uint8_t *)&p, sizeof(p),
>   1024                                     (uint8_t *)&r, sizeof(r));
>   1025          if (ret) {
>   1026                  dev_err(dev, "failed to EC_CODEC_GET_CAPABILITIES\n");
>   1027                  return ret;
>   1028          }
>   1029          priv->ec_capabilities = r.capabilities;
>   1030
>   1031          platform_set_drvdata(pdev, priv);
>   1032
>   1033          ret = devm_snd_soc_register_component(dev, &i2s_rx_component_driver,
>   1034                                                &i2s_rx_dai_driver, 1);
>   1035          if (ret)
>   1036                  return ret;
>   1037
>   1038          return devm_snd_soc_register_component(dev, &wov_component_driver,
>   1039                                                 &wov_dai_driver, 1);
>   1040  }
>   1041
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

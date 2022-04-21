Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4CF7509887
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 09:06:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1385334AbiDUGvl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 02:51:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239041AbiDUGu4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 02:50:56 -0400
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74E061705D
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 23:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650523554; x=1682059554;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=d56EZMIwbjmdjAsTMOqY9tnXTgEE6d1SLlZhiwnBP+0=;
  b=QxEWRyv9QSfcX+rO1K9qho9WfjxCMXllaEZ4pnKWphFRCncIMmW2HBFa
   T50FAKR/j+PeiCOCpQtRvaq6Ib1jYzBEMjDa4kMNi2EWmhKiOd3rZW9r+
   PjkOpIaFRlRdJsQDcYuNPqYRj3sO4gIoe/KlEh2Y4B9WjOF8UNHz3K9W8
   /98viASr3k0CzWQGCvcNP72/lUcp48b5KvE9RdNTnljtVz2nM1fEylTgJ
   trKiUIehSI+ueAgMnlDymQ1YbWYbDCuD1jjWtZ9sgpaVT30G6AxggIzoJ
   ci9TXjGaGbCkyxMlLYr7aYHeEk+VwGB1U9scOgy4VDn0XojDz6oYRby8P
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="264429735"
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; 
   d="scan'208";a="264429735"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2022 23:45:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; 
   d="scan'208";a="555609883"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 20 Apr 2022 23:45:52 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
        (envelope-from <lkp@intel.com>)
        id 1nhQZb-00082P-JU;
        Thu, 21 Apr 2022 06:45:51 +0000
Date:   Thu, 21 Apr 2022 14:45:01 +0800
From:   kernel test robot <lkp@intel.com>
To:     Daniel Kaehn <kaehndan@gmail.com>, tiwai@suse.com
Cc:     kbuild-all@lists.01.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] Add generic serial MIDI driver using serial bus API
Message-ID: <202204211211.RPFL9E3X-lkp@intel.com>
References: <20220420194747.490542-3-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220420194747.490542-3-kaehndan@gmail.com>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on tiwai-sound/for-next]
[also build test WARNING on v5.18-rc3 next-20220420]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Daniel-Kaehn/Add-generic-serial-MIDI-driver-using-serial-bus-API/20220421-035024
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git for-next
config: ia64-allyesconfig (https://download.01.org/0day-ci/archive/20220421/202204211211.RPFL9E3X-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/65e00db0913a4019c3158e31aa6b2fd2c28ba03f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Daniel-Kaehn/Add-generic-serial-MIDI-driver-using-serial-bus-API/20220421-035024
        git checkout 65e00db0913a4019c3158e31aa6b2fd2c28ba03f
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross W=1 O=build_dir ARCH=ia64 SHELL=/bin/bash sound/drivers/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> sound/drivers/serial-generic.c:192:6: warning: no previous prototype for 'snd_serial_generic_write_wakeup' [-Wmissing-prototypes]
     192 | void snd_serial_generic_write_wakeup(struct serdev_device *serdev)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/snd_serial_generic_write_wakeup +192 sound/drivers/serial-generic.c

   191	
 > 192	void snd_serial_generic_write_wakeup(struct serdev_device *serdev)
   193	{
   194		struct snd_serial_generic *drvdata = serdev_device_get_drvdata(serdev);
   195	
   196		if (!snd_rawmidi_transmit_empty(drvdata->midi_output))
   197			snd_serial_generic_output_write(drvdata->midi_output);
   198	}
   199	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
